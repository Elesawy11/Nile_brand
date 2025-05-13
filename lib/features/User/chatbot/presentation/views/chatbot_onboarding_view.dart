import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';

class ChatbotOnboardingView extends StatefulWidget {
  const ChatbotOnboardingView({super.key});

  @override
  State<ChatbotOnboardingView> createState() => _ChatbotOnboardingViewState();
}

class _ChatbotOnboardingViewState extends State<ChatbotOnboardingView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true); 

    _animation = Tween<double>(begin: 0, end: -40.h).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    Future.delayed(const Duration(seconds: 3), () {
      context.go(Routes.chatBotSplash2); 
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Center(
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, _animation.value),
                  child: child,
                );
              },
              child: Image.asset(
                Assets.imagesChatbootImage,
                width: 200.w,
                height: 200.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
