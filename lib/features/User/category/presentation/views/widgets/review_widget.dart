import 'package:nile_brand/core/routing/exports.dart';

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
