import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:equatable/equatable.dart';
import 'package:tredo/src/feature/app/model/user/user_dto.dart';
import 'package:tredo/src/feature/auth/data/database/user_storage.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  Future<void> signInWithGoogle() async {
    try {
      emit(AuthLoading());

      final googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        emit(AuthFailure("Пользователь отменил вход"));
        return;
      }

      final googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      final firebaseUser = userCredential.user;

      if (firebaseUser == null) {
        emit(AuthFailure("Ошибка получения данных пользователя"));
        return;
      }

      await FirebaseMessaging.instance.requestPermission();
      FirebaseMessaging messaging = FirebaseMessaging.instance;

      // Ждём APNs токен для  ios
      if (Platform.isIOS) {
        String? apnsToken;
        do {
          apnsToken = await messaging.getAPNSToken();
          if (apnsToken == null) {
            await Future.delayed(Duration(milliseconds: 500));
          }
        } while (apnsToken == null);

        log("✅ APNs Token: $apnsToken");
      }

      // Получаем FCM токен
      final fcmToken = await messaging.getToken();
      log("✅ FCM Token: $fcmToken");

      final userAuth = UserDTO(
        uid: firebaseUser.uid, // 👈 UID как строка, а не hashCode
        name: firebaseUser.displayName ?? '',
        email: firebaseUser.email ?? '',
        fcmToken: fcmToken ?? '',
      );

      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseUser.uid)
          .set({
        'uid': userAuth.uid,
        'name': userAuth.name,
        'email': userAuth.email,
        'fcmToken': fcmToken,
      }, SetOptions(merge: true));
      await UserStorage().saveUser(userAuth);
      emit(AuthSuccess(userAuth));
    } catch (e, stacktrace) {
      log("🔥 Ошибка входа: $e", stackTrace: stacktrace);
      emit(AuthFailure("Ошибка входа: $e"));
    }
  }

  Future<void> signOut() async {
    try {
      await GoogleSignIn().signOut();
      await FirebaseAuth.instance.signOut();
      await UserStorage().removeUser();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailure("Ошибка выхода: $e"));
    }
  }
}
