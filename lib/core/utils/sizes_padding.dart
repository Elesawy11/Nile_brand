import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ScreenUtilExtension on num {
  Widget get hs => SizedBox(width: w); // Example: 20.hs

  Widget get vs => SizedBox(height: h); // Example: 15.vs

  EdgeInsetsDirectional get all => EdgeInsetsDirectional.all(toDouble().r);
  // Example: Padding(padding: 10.all)

  EdgeInsetsDirectional get ph =>
      EdgeInsetsDirectional.symmetric(horizontal: toDouble().w);
  // Example: Padding(padding: 16.ph)

  EdgeInsetsDirectional get pv =>
      EdgeInsetsDirectional.symmetric(vertical: toDouble().h);
  // Example: Padding(padding: 12.pv)

  EdgeInsets get allEdgeInsets => EdgeInsets.all(toDouble().r);
  // Example: Container(margin: 20.allEdgeInsets)
}

extension BuildContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenWidth => mediaQuery.size.width;
  // Example:
  // double width = context.screenWidth;

  double get screenHeight => mediaQuery.size.height;
  // Example:
  // double height = context.screenHeight;

  bool get isPortrait =>
      MediaQuery.of(this).orientation == Orientation.portrait;
  // Example:
  // if (context.isPortrait) {
  // Perform action for portrait mode
  // } else {
  // Perform action for landscape mode
  // }
}
