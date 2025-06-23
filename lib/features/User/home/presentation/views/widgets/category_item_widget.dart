import 'package:nile_brand/core/routing/exports.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.isImageUrlTrue,
  });
  final String title;
  final String imageUrl;
  final bool isImageUrlTrue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.w, bottom: 7.h),
      child: Column(
        children: [
          isImageUrlTrue
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.network(
                    imageUrl,
                    height: 87.r,
                    width: 87.r,
                    fit: BoxFit.cover,
                  ),
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: Image.asset(
                    Assets.imagesNotFoundImage,
                    height: 87.r,
                    width: 87.r,
                    fit: BoxFit.cover,
                  ),
                ),
          SizedBox(
            width: 87.r,
            child: Center(
              child: Text(
                title,
                style: Styles.font14W500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
