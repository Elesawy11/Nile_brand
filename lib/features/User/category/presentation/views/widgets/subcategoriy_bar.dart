import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/app_strings.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

class SubcategoriyBar extends StatelessWidget {
  final String category;
  const SubcategoriyBar({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 10.ph,
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.black)),
        color: Colors.white,
      ),
      height: double.infinity,
      width: 120.w,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          //TODO : add list from [Subcategory] repo
          children: AppStrings.subCategories[category]!
              .map((subcategory) => Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          subcategory,
                          style: Styles.font16W400,
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
