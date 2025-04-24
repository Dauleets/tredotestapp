import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tredo/src/feature/app/model/message/message_dto.dart';
import 'package:http/http.dart' as http;

class ChatCubit extends Cubit<List<MessageDTO>> {
  final String chatId;
  StreamSubscription? _subscription;

  ChatCubit(this.chatId) : super([]) {
    listenToMessages();
  }

  void listenToMessages() {
    _subscription = FirebaseFirestore.instance
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp')
        .snapshots()
        .listen((snapshot) {
      final messages = snapshot.docs.map((doc) {
        final data = doc.data();
        return MessageDTO.fromJson({...data, 'id': doc.id});
      }).toList();
      emit(messages);
    });
  }

  Future<void> sendMessage(String text, String senderId) async {
    if (text.trim().isEmpty) return;

    final message = MessageDTO(
      senderId: senderId,
      text: text.trim(),
      timestamp: DateTime.now(),
    );

    await FirebaseFirestore.instance
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .add(message.toJson());

    // Optionally update chat preview
    await FirebaseFirestore.instance.collection('chats').doc(chatId).set({
      'users': chatId.split('_'),
      'lastMessage': text,
      'timestamp': DateTime.now(),
    }, SetOptions(merge: true));

    final userIds = chatId.split('_');
    final receiverId =
        userIds.firstWhere((id) => id != senderId); // senderId теперь строка

    final userDoc = await FirebaseFirestore.instance
        .collection('users')
        .doc(receiverId)
        .get();

    final fcmToken = userDoc.data()?['fcmToken'];
    final senderDoc = await FirebaseFirestore.instance
    .collection('users')
    .doc(senderId)
    .get();

final senderName = senderDoc.data()?['name'] ?? 'Неизвестный';


    if (fcmToken != null && fcmToken is String && fcmToken.isNotEmpty) {
      await sendPushNotification(fcmToken, text, senderName);
    } else {
      log('FCM $receiverId not found');
    }
  }

  Future<void> sendPushNotification(
      String token, String body, String title) async {
    final serviceAccount =
        jsonDecode(await rootBundle.loadString('assets/service_account.json'));

    final jwt = JWT(
      {
        "iss": serviceAccount['client_email'],
        "scope": "https://www.googleapis.com/auth/firebase.messaging",
        "aud": "https://oauth2.googleapis.com/token",
        "iat": DateTime.now().millisecondsSinceEpoch ~/ 1000,
        "exp": (DateTime.now()
                .add(Duration(minutes: 60))
                .millisecondsSinceEpoch) ~/
            1000,
      },
    );

    final key = RSAPrivateKey(serviceAccount['private_key']);
    final signedJwt = jwt.sign(key, algorithm: JWTAlgorithm.RS256);

    final tokenResponse = await http.post(
      Uri.parse('https://oauth2.googleapis.com/token'),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'grant_type': 'urn:ietf:params:oauth:grant-type:jwt-bearer',
        'assertion': signedJwt,
      },
    );

    final accessToken = jsonDecode(tokenResponse.body)['access_token'];

    final message = {
      "message": {
        "token": token,
        "notification": {
          "title": title,
          "body": body,
        },
        "android": {
          "priority": "high",
        },
        "apns": {
          "headers": {
            "apns-priority": "10",
          },
          "payload": {
            "aps": {
              "sound": "default",
            }
          }
        }
      }
    };

    final response = await http.post(
      Uri.parse(
          'https://fcm.googleapis.com/v1/projects/tredo-21acd/messages:send'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(message),
    );
    log('FCM response: ${response.statusCode} ${response.body}');
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
