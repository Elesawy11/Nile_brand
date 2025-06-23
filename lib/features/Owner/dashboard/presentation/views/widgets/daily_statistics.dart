import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nile_brand/features/Owner/dashboard/data/models/analytics_model.dart';
import 'package:nile_brand/features/Owner/dashboard/presentation/views/widgets/daily_item.dart';

class DailyStatistics extends StatelessWidget {
  final List<DailyStat> dailyStat;
  const DailyStatistics({super.key, required this.dailyStat});

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
        children:[ 
          Text("Daily Statistics",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 16.h),
          ...List.generate(dailyStat.length, (index) {
          return  CutomeDailyItem(
              date:DateFormat("MMMM d").format(DateTime.parse(dailyStat[index].date.toString())),
              day: "Mon",
              revenue: "\$${dailyStat[index].revenue}",
              sales: "${dailyStat[index].sales} sales",
              progress: .16);
          

        },)
          
       
          
        ],
      ),
    );
  }
}
