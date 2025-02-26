import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/color_manager.dart';
import 'chat_bubble_widget.dart';
import 'chatbot_chat_bubble.dart';

class ListViewOfChatBubblesWidget extends StatelessWidget {
  const ListViewOfChatBubblesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // reverse: true,
      padding: EdgeInsets.zero,
      itemCount: 7,
      itemBuilder: (context, index) {
        return (index % 2) == 0
            ? Align(
                alignment: Alignment.centerRight,
                child: ChatBubbleWidget(
                  text: 'What is the "Nile Brands Platform"?',
                  backgroundColor: ColorManager.blue33,
                  textColor: Colors.white,
                  bottomLeft: Radius.circular(
                    25.r,
                  ),
                ),
              )
            : const ChatbotChatBubbleWidget(
                text:
                    'You can sign up by:Providing your basic information like name, email, and password.Choosing your account type: Brand Owner or Customer.Following the verification steps to activate your account',
              );
      },
    );
  }
}
