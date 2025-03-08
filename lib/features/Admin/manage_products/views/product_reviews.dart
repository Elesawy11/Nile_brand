import 'package:flutter/material.dart';

import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/product_review_list.dart';

import '../../../../core/utils/styles.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Reviews',
          style: Styles.font30W700,
        ),
      ),
      body: Padding(
        padding: 12.ph,
        child:const Center(
          child: ProductReviewList()
        ),
      ),
    );
  }
}
