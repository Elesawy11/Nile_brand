import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CutomeDailyItem extends StatelessWidget {
  final String date;
  final String day;
  final String revenue;
  final String sales; 
  final double progress;
  const CutomeDailyItem({super.key, required this.date, required this.day, required this.revenue, required this.sales, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 14.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.calendar_today, size: 18.sp, color: Colors.grey),
              SizedBox(width: 8.w),
              Text(date, style: const TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 8.w),
              Text(day, style: const TextStyle(color: Colors.grey))
            ],
          ),
          SizedBox(height: 8.h),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.shade200,
            color: Colors.blue.shade900,
            minHeight: 6.h,
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(revenue, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(sales, style: const TextStyle(color: Colors.grey))
            ],
          ),
        ],
      ),
    );
  }
}