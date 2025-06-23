import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/category/data/models/review_model.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_cubit.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class CustomeProductReview extends StatelessWidget {
  final ReviewModel review;
  const CustomeProductReview({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: 7.allEdgeInsets,
      padding: 8.allEdgeInsets,
      decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.circular(10.r)),
      height: 92.h,
      width: 301.w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 50.w,
                height: 50.h,
                child: review.user!.userImage == null
                    ? Image.asset(Assets.imagesProfileImage)
                    : ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20.r)),
                        child: Image.network(review.user!.userImage!)),
              ),
              4.hs,
              Expanded(child: Text(style: Styles.font12W300, review.comment!)),
              SizedBox(
                height: 19.h,
                width: 19.w,
                child: InkWell(
                    onTap: () async {
                      //  await  context
                      //       .read<GetReviewsCubit>()
                      //       .deleteProductReview(review.product!, review.sId!);
                    },
                    child: Image.asset(Assets.imagesDeleteIcon)),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 156.w,
              height: 20.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    5,
                    (index) {
                      if (index < review.rating!) {
                        return Image.asset(Assets.imagesSelectedStar);
                      }

                      return Image.asset(Assets.imagesUnselectedStar);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
