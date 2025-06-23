import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomeProductItem extends StatelessWidget {
  final String name;
  final String category;
  final String revenue;
  final String sales;
  const CustomeProductItem({super.key, required this.name, required this.category, required this.revenue, required this.sales});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding:  EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: const Icon(Icons.store, color: Colors.green),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(category, style: const TextStyle(color: Colors.grey)),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(revenue, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(sales, style: const TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }
}
