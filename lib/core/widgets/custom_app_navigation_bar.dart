import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/assets.dart';
import '../routing/routes.dart';

class CustomAppNavigationBar extends StatelessWidget {
  const CustomAppNavigationBar(
      {super.key,
      required this.navigationShell,
      required this.isFloatingAction,
      required this.items});
  final StatefulNavigationShell navigationShell;
  final bool isFloatingAction;
  final List<BottomNavigationBarItem> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          isFloatingAction ? FloatingActionButtonLocation.miniEndFloat : null,
      floatingActionButton: isFloatingAction
          ? FloatingActionButton(
              isExtended: true,
              onPressed: () {
                context.go(Routes.chatbotOnboarding);
              },
              backgroundColor: Colors.white.withValues(alpha: 0),
              elevation: 0,
              child: Image.asset(
                Assets.imagesChatbootImage,
                width: 56.r,
                height: 56.r,
              ),
            )
          : null,
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => navigationShell.goBranch(index),
        items: items,
      ),
    );
  }
}
