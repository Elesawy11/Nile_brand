import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/helpers/is_valid_uri.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_state.dart';

import '../../../../../../core/utils/assets.dart';

class ReviewsInfo extends StatelessWidget {
  const ReviewsInfo({
    super.key,
    required this.productId,
  });
  final String productId;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 380.w,
            height: 57.h,
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            decoration: BoxDecoration(
              color: ColorManager.grayD9,
              borderRadius: BorderRadius.circular(11.r),
            ),
            child: Row(
              children: [
                Image.asset(
                  Assets.imagesProfileImage,
                  height: 32.h,
                  width: 32.w,
                ),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Add review",
                        helperStyle: Styles.font16W500
                            .copyWith(color: ColorManager.grayD9),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withValues(alpha: 0))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withValues(alpha: 0))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withValues(alpha: 0)))),
                  ),
                ),
                InkWell(
                    child: Icon(
                  Icons.send_outlined,
                  size: 24.w,
                  color: ColorManager.mainColor,
                ))
              ],
            ),
          ),
          10.vs,
          BlocBuilder<GetReviewsCubit, GetReviewsState>(
            builder: (context, state) {
              return state is GetReviewsSuccess
                  ? ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.reviews.length,
                      itemBuilder: (context, index) {
                        return ReviewWidget(
                          imageUrl: state.reviews[index].user?.userImage ?? '',
                          text: state.reviews[index].comment ?? 'no comment',
                        );
                      },
                    )
                  : state is GetReviewsLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.mainColor,
                          ),
                        )
                      : state is GetReviewsError
                          ? Container(
                              height: 50.h,
                              margin: EdgeInsets.only(bottom: 10.h),
                              padding: EdgeInsets.symmetric(horizontal: 7.w),
                              decoration: BoxDecoration(
                                color: ColorManager.grayD9,
                                borderRadius: BorderRadius.circular(13.r),
                              ),
                              child: Row(
                                children: [
                                  10.hs,
                                  Flexible(
                                    child: Center(
                                      child: Text(
                                        'No reviews yet',
                                        style: Styles.font12W500.copyWith(
                                          color: ColorManager.gray8C,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          : const SizedBox();
            },
          )
        ],
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.imageUrl,
    required this.text,
  });
  final String imageUrl;
  final String text;
  @override
  Widget build(BuildContext context) {
    bool isValidImage = isValidUri(imageUrl);

    return Container(
      //     width: 380.w,
      // height: 57.h,
      height: 50.h,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      decoration: BoxDecoration(
        color: ColorManager.grayD9,
        borderRadius: BorderRadius.circular(13.r),
      ),

      child: Row(
        children: [
          isValidImage
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    imageUrl,
                    height: 32.h,
                    width: 32.w,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        Assets.imagesProfileImage,
                        height: 32.h,
                        width: 32.w,
                      );
                    },
                  ),
                )
              : Image.asset(
                  Assets.imagesProfileImage,
                  height: 32.h,
                  width: 32.w,
                ),
          10.hs,
          Flexible(
            child: Text(
              text,
              style: Styles.font12W500.copyWith(
                color: ColorManager.gray8C,
              ),
            ),
          )
        ],
      ),
    );
  }
}
