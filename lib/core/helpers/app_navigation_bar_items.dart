import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/navigation_bar_item_image_model.dart';
import 'bottom_navigation_bar_item.dart';

List<BottomNavigationBarItem> appNavigationBarItems(
    {required List<NavigationBarItemsImagesModel> list}) {
  return List.generate(
    list.length,
    (index) => bootmNavigationBarItem(
      icon: Image.asset(
        list[index].imageIcon,
        width: 24.r,
        height: 24.r,
      ),
      label: '',
      activeIcon: Image.asset(
        list[index].activeImageIcon,
        width: 24.r,
        height: 24.r,
      ),
    ),
  );
}
