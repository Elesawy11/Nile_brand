import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';

import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/product_review_list.dart';
import 'package:nile_brand/features/User/category/data/api/sub_category_source.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_cubit.dart';

import '../../../../core/utils/styles.dart';
import '../../../User/category/data/repo/sub_category_repo_impl.dart';
import '../../../User/category/presentation/cubits/get_reviews_cubit/get_reviews_state.dart';


class ProductReviews extends StatelessWidget {
  final ProductModel product;

  const ProductReviews({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetReviewsCubit(SubCategoryRepoImpl(SubCategorySource(DioFactory.getDio())))..getReviews(product.id!),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Product Reviews',
            style: Styles.font30W700
                .copyWith(fontSize: 25.sp, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: 12.ph,
          child: BlocConsumer<GetReviewsCubit, GetReviewsState>(
            listener: (context, state) {
              if (state is GetReviewsError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error.contains("No documents")? "No reviews found.":state.error )),
                );
              }
            },
            builder: (context, state) {
              if (state is GetReviewsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is GetReviewsSuccess) {
                return ProductReviewList(reviews: state.reviews);
              } else if (state is GetReviewsError && state.error != "No documents found with the provided query") {

                return Center(child: Text(state.error));
              } else {
                return const Center(child: Text("No reviews found."));
              }
            },
          ),
        ),
      ),
    );
  }
}
