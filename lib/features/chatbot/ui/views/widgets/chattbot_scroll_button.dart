import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/chatbot/ui/cubits/cubit/chatbot_scroll_cubit.dart';
import 'circuler_button.dart';

class ChatbotScrollButton extends StatelessWidget {
  const ChatbotScrollButton({super.key, required this.progress});
  final double progress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => getIt.get<ChatbotScrollCubit>().scroll(),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CirculerButton(
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 70.r,
              width: 70.r,
              child: CircularProgressIndicator(
                backgroundColor: const Color(0xffB8C7CB),
                color: const Color(0xff92A3FD),
                strokeWidth: 3,
                value: progress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
