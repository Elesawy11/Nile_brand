import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/helpers/bottom_navigation_bar_item.dart';
import '../../core/utils/assets.dart';

class UserConstants {
  UserConstants._();

  static List<UserNavigationBarItemsImages> userNavigationBarItemsImagesList = [
    UserNavigationBarItemsImages(
      imageIcon: Assets.imagesHomeIcon,
      activeImageIcon: Assets.imagesActiveHomeIcon,
    ),
    UserNavigationBarItemsImages(
      imageIcon: Assets.imagesCategoryIcon,
      activeImageIcon: Assets.imagesActiveCategoryIcon,
    ),
    UserNavigationBarItemsImages(
      imageIcon: Assets.imagesOrderIcon,
      activeImageIcon: Assets.imagesActiveOrderIcon,
    ),
    UserNavigationBarItemsImages(
      imageIcon: Assets.imagesWishlistIcon,
      activeImageIcon: Assets.imagesActiveWishlistIcon,
    ),
    UserNavigationBarItemsImages(
      imageIcon: Assets.imagesCartIcon,
      activeImageIcon: Assets.imagesActiveCartIcon,
    ),
    UserNavigationBarItemsImages(
      imageIcon: Assets.imagesProfileIcon,
      activeImageIcon: Assets.imagesActiveProfileIcon,
    )
  ];

  static List<BottomNavigationBarItem> userAppNavigationBarItems() {
    return List.generate(
      UserConstants.userNavigationBarItemsImagesList.length,
      (index) => bootmNavigationBarItem(
        icon: Image.asset(
          UserConstants.userNavigationBarItemsImagesList[index].imageIcon,
          width: 24.r,
          height: 24.r,
        ),
        label: '',
        activeIcon: Image.asset(
          UserConstants.userNavigationBarItemsImagesList[index].activeImageIcon,
          width: 24.r,
          height: 24.r,
        ),
      ),
    );
  }
}

class UserNavigationBarItemsImages {
  final String imageIcon;
  final String activeImageIcon;

  UserNavigationBarItemsImages({
    required this.imageIcon,
    required this.activeImageIcon,
  });
}
