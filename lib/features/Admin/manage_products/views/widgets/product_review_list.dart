import 'package:flutter/material.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/custome_product_review.dart';

class ProductReviewList extends StatelessWidget {
  const ProductReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const CustomeProductReview(),);
  }
}