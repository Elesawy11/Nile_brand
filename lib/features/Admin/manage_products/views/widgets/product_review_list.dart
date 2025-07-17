import 'package:flutter/material.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/custome_product_review.dart';
import 'package:nile_brand/features/User/category/data/models/review_model.dart';

class ProductReviewList extends StatelessWidget {
  final List<ReviewModel> reviews;
  const ProductReviewList({super.key, required this.reviews});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: reviews.length,

      itemBuilder: (context, index) => CustomeProductReview(
        review: reviews[index],
      ),

    );
  }
}
