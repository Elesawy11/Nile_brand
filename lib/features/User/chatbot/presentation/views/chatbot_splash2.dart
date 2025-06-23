import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/styles.dart';
import '../../../../../core/routing/routes.dart';

class ChatbotSplash2 extends StatefulWidget {
  const ChatbotSplash2({super.key});

  @override
  State<ChatbotSplash2> createState() => _ChatbotSplash2State();
}

class _ChatbotSplash2State extends State<ChatbotSplash2> {
  final String _fullText =
      "The chatbot is equipped with pre-set questions and answers to assist you easily and quickly";

  final ValueNotifier<String> _displayedText = ValueNotifier<String>("");
  int _charIndex = 0;
  Timer? _typingTimer;

  @override
  void initState() {
    super.initState();
    _startTypingText();

    Future.delayed(const Duration(seconds: 5), () {
      context.go(Routes.chatbot);
    });
  }

  void _startTypingText() {
    _typingTimer = Timer.periodic(const Duration(milliseconds: 40), (timer) {
      if (_charIndex < _fullText.length) {
        _displayedText.value += _fullText[_charIndex];
        _charIndex++;
      } else {
        _typingTimer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _typingTimer?.cancel();
    _displayedText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.imagesChatbotImage2,
                  width: 320.w,
                  height: 340.h,
                ),
                SizedBox(height: 20.h),
                ValueListenableBuilder<String>(
                  valueListenable: _displayedText,
                  builder: (context, value, _) {
                    return Text(
                      value,
                      textAlign: TextAlign.center,
                      style: Styles.font22W500.copyWith(color: Colors.white),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
