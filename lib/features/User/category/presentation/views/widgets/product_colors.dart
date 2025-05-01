import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/color_manager.dart';

class ProductColors extends StatefulWidget {
  final ValueNotifier<int> selectedColor;
  const ProductColors({super.key, required this.selectedColor});

  @override
  State<ProductColors> createState() => _ProductColorsState();
}

class _ProductColorsState extends State<ProductColors> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...List.generate(
            5,
            (index) {
              return InkWell(
                onTap: () {
                  widget.selectedColor.value = index;
                },
                child: Container(
                  width: 49.w,
                  height: 69.h,
                  decoration: BoxDecoration(
                      border: widget.selectedColor.value == index
                          ? Border.all(color: ColorManager.blue33)
                          : null,
                      color: Color(0xffF5F7F8),
                      borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: Image.asset(
                    "assets/images/dress.png",
                    width: 10.w,
                    height: 10.h,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
