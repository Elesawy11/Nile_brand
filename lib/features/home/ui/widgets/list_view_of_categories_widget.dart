import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';

class ListViewOfCategoreisWidget extends StatelessWidget {
  const ListViewOfCategoreisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 120.h,
          width: double.infinity,
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const CategoryItemWidget();
            },
          ),
        );
      },
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.w, bottom: 7.h),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesClothes,
            height: 87.r,
            width: 87.r,
            fit: BoxFit.cover,
          ),
          const Text('Title '),
        ],
      ),
    );
  }
}
