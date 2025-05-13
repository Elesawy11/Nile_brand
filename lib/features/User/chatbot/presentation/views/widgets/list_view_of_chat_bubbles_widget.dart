import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/color_manager.dart';
import '../../cubits/chat/chat_cubit.dart';
import '../../cubits/chat/chat_state.dart';

class ListViewOfChatBubblesWidget extends StatelessWidget {
  const ListViewOfChatBubblesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatbotCubit, ChatbotState>(
      builder: (context, state) {
        List<Map<String, String>> messages = [];
        String? typingMessage;

        if (state is ChatbotResponseState) {
          messages = state.chatHistory;
        } else if (state is ChatbotTypingState) {
          messages = state.chatHistory;
          typingMessage = state.partialAnswer;
        }

        return ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: typingMessage == null ? messages.length : messages.length + 1,
          itemBuilder: (context, index) {
            if (index < messages.length) {
              final message = messages[index];
              final isUser = message["role"] == "user";
              return _buildMessageBubble(message["message"]!, isUser);
            } else {
              return _buildMessageBubble(typingMessage!, false);
            }
          },
        );
      },
    );
  }

  Widget _buildMessageBubble(String text, bool isUser) {
    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isUser ? ColorManager.blue33 : ColorManager.lightGrey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
            bottomLeft: isUser ? Radius.circular(20.r) : Radius.circular(0),
            bottomRight: isUser ? Radius.circular(0) : Radius.circular(20.r),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isUser ? Colors.white : Colors.black,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
