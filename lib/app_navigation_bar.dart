import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/assets.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      // floatingActionButton: const CustomFloatingActionButton(),
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
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
              Assets.imagesCartIcon,
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
