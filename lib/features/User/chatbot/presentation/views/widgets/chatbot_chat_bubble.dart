import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/spacer.dart';
import 'chat_bubble_widget.dart';

class ChatbotChatBubbleWidget extends StatelessWidget {
  const ChatbotChatBubbleWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 26.r,
          height: 26.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.r),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: ColorManager.lightGrey,
                blurRadius: 2,
                offset: Offset(0, 2.0),
              ),
            ],
          ),
          child: Image.asset(
            Assets.imagesChatbotLogo,
          ),
        ),
        horizontalSpace(7),
        ChatBubbleWidget(
          text: text,
          backgroundColor: ColorManager.grayEE,
          textColor: ColorManager.gray50,
          topRight: Radius.circular(
            25.r,
          ),
        ),
      ],
    );
  }
}
