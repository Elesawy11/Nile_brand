import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/app_strings.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';

class CategoriesAndFilterWidget extends StatelessWidget {
  const CategoriesAndFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.w),
      child: Row(
        children: [
          SizedBox(
            width: 315.w,
            height: 32.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: AppStrings.mainCategories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 24.w),
                  child: Text(
                    AppStrings.mainCategories[index],
                    style: Styles.font17W400,
                  ),
                );
              },
            ),
          ),
          horizontalSpace(18),
          Image.asset(
            Assets.imagesFilter,
            width: 20.w,
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
