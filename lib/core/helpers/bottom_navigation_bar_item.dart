import 'package:flutter/material.dart';

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
