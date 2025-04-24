import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tredo/src/core/resources/resources.dart';
import 'package:tredo/src/feature/app/model/message/message_dto.dart';
import 'package:tredo/src/feature/app/model/user/user_dto.dart';
import 'package:tredo/src/feature/app/widgets/custom_app_bar.dart';
import 'package:tredo/src/feature/chat/presentation/cubit/chat_cubit.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  final UserDTO me;
  final UserDTO companion;
  const ChatPage({super.key, required this.me, required this.companion});

  @override
  Widget build(BuildContext context) {
    final chatId = _generateChatId(me.uid ?? '', companion.uid ?? '');
    log(chatId, name: 'chat');
    log(me.uid.toString(), name: 'me.uid');
    log(companion.uid.toString(), name: 'companion.uid');

    return BlocProvider(
      create: (_) => ChatCubit(chatId),
      child: _ChatView(me: me, companion: companion),
    );
  }
}

String _generateChatId(String uid1, String uid2) {
  final sorted = [uid1, uid2]..sort();
  return '${sorted[0]}_${sorted[1]}';
}

class _ChatView extends StatefulWidget {
  final UserDTO me;
  final UserDTO companion;
  const _ChatView({required this.me, required this.companion});

  @override
  State<_ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<_ChatView> {
  final ScrollController scrollController = ScrollController();
  final TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    scrollController.dispose();
    messageController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = messageController.text.trim();
    if (text.isEmpty) return;

    context.read<ChatCubit>().sendMessage(text, widget.me.uid.toString());
    messageController.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!scrollController.hasClients) return;
      scrollController.animateTo(
        scrollController.position.maxScrollExtent + 80,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: AppColors.colorMain,
        title: widget.companion.name ?? 'No Name',
        style: AppTextStyles.m20w400.copyWith(color: AppColors.kWhite),
        leadingExist: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatCubit, List<MessageDTO>>(
              builder: (context, messages) {
                if (messages.isEmpty) {
                  return const Center(child: Text("Нет сообщений"));
                }
                return ListView.separated(
                  padding: EdgeInsets.all(12),
                  controller: scrollController,
                  itemCount: messages.length,
                  separatorBuilder: (context, index) {
                    final current = messages[index];
                    final next = messages[index + 1];
                    final currentDate = current.timestamp?.toLocal();
                    final nextDate = next.timestamp?.toLocal();

                    if (currentDate != null &&
                        nextDate != null &&
                        !isSameDay(currentDate, nextDate)) {
                      return _buildDateLabel(
                          currentDate); // Add the date separator
                    }
                    return const SizedBox
                        .shrink(); // Return an empty widget if no separator is needed
                  },
                  itemBuilder: (context, index) {
                    final msg = messages[index];
                    final isMe = msg.senderId == widget.me.uid.toString();

                    if (index == 0) {
                      return Column(
                        children: [
                          _buildDateLabel(msg.timestamp
                              ?.toLocal()), // Add the date for the first message
                          _buildMessageBubble(
                              msg, isMe), // Build the message bubble
                        ],
                      );
                    }

                    return _buildMessageBubble(
                        msg, isMe); // Build the message bubble
                  },
                );
              },
            ),
          ),
          const Divider(height: 1),
          Container(
            color: AppColors.colorMain,
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 17, top: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageController,
                    textInputAction: TextInputAction.send,
                    onSubmitted: (_) => _sendMessage(),
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                      hintText: 'Введите сообщение...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send, color: AppColors.kWhite),
                  color: messageController.text.trim().isEmpty
                      ? Colors.grey
                      : AppColors.colorMain,
                  onPressed: messageController.text.trim().isEmpty
                      ? null
                      : _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  Widget _buildDateLabel(DateTime? date) {
    if (date == null) return const SizedBox.shrink();
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final msgDate = DateTime(date.year, date.month, date.day);

    String label;
    if (msgDate == today) {
      label = 'Сегодня';
    } else if (msgDate == today.subtract(const Duration(days: 1))) {
      label = 'Вчера';
    } else {
      label = DateFormat('d MMMM', 'ru').format(msgDate); // пример: "15 апреля"
    }

    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget _buildMessageBubble(MessageDTO msg, bool isMe) {
    final time = msg.timestamp != null
        ? DateFormat('HH:mm').format(msg.timestamp!.toLocal())
        : '';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start, // Align based on sender
        children: [
          Container(
            constraints: BoxConstraints(
                maxWidth:
                    MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                            .size
                            .width *
                        0.7),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: isMe
                  ? AppColors.colorMain.withOpacity(0.8) // Outgoing message
                  : Colors.grey.shade300, // Incoming message
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment:
                  isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Text(
                  msg.text ?? '',
                  style: TextStyle(
                    color: isMe ? Colors.white : Colors.black87,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  time,
                  style: TextStyle(
                    fontSize: 11,
                    color: isMe ? Colors.white70 : Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
