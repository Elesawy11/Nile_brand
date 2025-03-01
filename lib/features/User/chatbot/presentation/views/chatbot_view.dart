import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'widgets/chat_bar_widget.dart';
import 'widgets/chatbot_top_bar_widget.dart';
import 'widgets/list_view_of_chat_bubbles_widget.dart';

class ChatbotView extends StatelessWidget {
  const ChatbotView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ChatbotTopBarWidget(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const ListViewOfChatBubblesWidget(),
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const ChatBarWidget(),
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
