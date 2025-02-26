import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/assets.dart';

import 'core/routing/routes.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      floatingActionButton: FloatingActionButton(
        isExtended: true,
        onPressed: () {
          context.go(Routes.chatbotOnboarding);
        },
        backgroundColor: Colors.white.withValues(alpha: 0),
        elevation: 0,
        child: Image.asset(
          Assets.imagesChatboot,
          width: 56.r,
          height: 56.r,
        ),
      ),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => navigationShell.goBranch(index),
        items: [
          bootmNavigationBarItem(
            icon: Image.asset(
              Assets.imagesHomeIcon,
              width: 24.r,
              height: 24.r,
            ),
            label: '',
            activeIcon: Image.asset(
              Assets.imagesActiveHomeIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
          bootmNavigationBarItem(
            icon: Image.asset(
              Assets.imagesCategoryIcon,
              width: 24.r,
              height: 24.r,
            ),
            label: '',
            activeIcon: Image.asset(
              Assets.imagesActiveCategoryIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
          bootmNavigationBarItem(
            icon: Image.asset(
              Assets.imagesOrderIcon,
              width: 24.r,
              height: 24.r,
            ),
            label: '',
            activeIcon: Image.asset(
              Assets.imagesActiveOrderIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
          bootmNavigationBarItem(
            icon: Image.asset(
              Assets.imagesWishlistIcon,
              width: 24.r,
              height: 24.r,
            ),
            label: '',
            activeIcon: Image.asset(
              Assets.imagesActiveWishlistIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
          bootmNavigationBarItem(
            icon: Image.asset(
              Assets.imagesCartIcon,
              width: 24.r,
              height: 24.r,
            ),
            label: '',
            activeIcon: Image.asset(
              // ActiveCartIcon
              Assets.imagesActiveCartIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
          bootmNavigationBarItem(
            icon: Image.asset(
              Assets.imagesProfileIcon,
              width: 24.r,
              height: 24.r,
            ),
            label: '',
            activeIcon: Image.asset(
              Assets.imagesActiveProfileIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bootmNavigationBarItem({
    required Widget icon,
    required String label,
    required Widget activeIcon,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
      activeIcon: activeIcon,
    );
  }
}
