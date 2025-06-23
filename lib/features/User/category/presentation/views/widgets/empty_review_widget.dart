import 'package:nile_brand/core/routing/exports.dart';

class EmptyReviewsWidget extends StatelessWidget {
  const EmptyReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
