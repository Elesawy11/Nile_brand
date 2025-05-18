
// نموذج رسالة
import 'package:flutter/material.dart';

class ChatMessage {
  final String text;
  final bool isSender; // true = user, false = owner

  ChatMessage({required this.text, required this.isSender});
}

// فقاعة الرسالة القابلة لإعادة الاستخدام
class MessageBubble extends StatelessWidget {
  final String message;
  final bool isSender;

  const MessageBubble({super.key, required this.message, required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSender ? Colors.blueAccent : Colors.grey.shade300,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
            bottomLeft: Radius.circular(isSender ? 12 : 0),
            bottomRight: Radius.circular(isSender ? 0 : 12),
          ),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isSender ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
