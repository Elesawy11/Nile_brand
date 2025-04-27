import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/product_review_list.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/utils/styles.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        title: Text(
          'Product Reviews',
          style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: 12.ph,
        child: Center(
          child: Skeletonizer(
            enabled: false,
            child: ProductReviewList())
        ),
      ),
    );
  }
}
