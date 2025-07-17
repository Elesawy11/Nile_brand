import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeStateCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final String change;
  final Color changeColor;

  const CustomeStateCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      required this.change,
      required this.changeColor});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),

        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6.r)],

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20.w),
              SizedBox(width: 6.w),

              Text(title,
                  style: TextStyle(fontSize: 14.sp, color: Colors.grey)),
            ],
          ),
          SizedBox(height: 10.h),
          Text(value,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 4.h),
          Row(
            children: [
              Icon(
                  changeColor == Colors.red
                      ? Icons.arrow_downward
                      : Icons.arrow_upward,
                  size: 16.w,
                  color: changeColor),
              SizedBox(width: 4.w),
              Text('$change vs last month',
                  style: TextStyle(fontSize: 12.sp, color: changeColor))

            ],
          )
        ],
      ),
    );
  }
}
