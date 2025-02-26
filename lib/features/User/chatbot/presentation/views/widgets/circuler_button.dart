import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CirculerButton extends StatelessWidget {
  const CirculerButton({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 33.r,
      backgroundColor: Colors.white,
      child: Container(
          height: 60.r,
          width: 60.r,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color(0xff92A3FD),
              Color(0xff9DCEFF),
            ]),
            borderRadius: BorderRadius.circular(
              40.r,
            ),
          ),
          child: child),
    );
  }
}
