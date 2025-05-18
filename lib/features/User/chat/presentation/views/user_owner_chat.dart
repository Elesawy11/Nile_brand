import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/chat/presentation/views/widgets/chat_bubble.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/assets.dart';

class UserOwnerChat extends StatefulWidget {
  const UserOwnerChat({super.key});

  @override
  State<UserOwnerChat> createState() => _UserOwnerChatState();
}

class _UserOwnerChatState extends State<UserOwnerChat> {
  final TextEditingController _messageController = TextEditingController();

  final List<ChatMessage> messages = [
    ChatMessage(text: "Hello!", isSender: false),
    ChatMessage(text: "Hi there!", isSender: true),
    ChatMessage(text: "How can I help you?", isSender: false),
  ];

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        messages.add(ChatMessage(text: text, isSender: true));
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70.h,
          actions: [
            IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: Icon(Icons.exit_to_app))
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.imagesChatbotLogo),
            ),
          ),
          title: Text(
            "User Name",
            style: TextStyle(
                color: ColorManager.mainColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w500),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: false,
                padding: const EdgeInsets.all(8),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final msg = messages[index];
                  return MessageBubble(
                      message: msg.text, isSender: msg.isSender);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: "Type a message...",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: ColorManager.blue33),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    icon: Icon(
                      Icons.send,
                      color: ColorManager.mainColor,
                      size: 27.h,
                    ),
                    onPressed: _sendMessage,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
