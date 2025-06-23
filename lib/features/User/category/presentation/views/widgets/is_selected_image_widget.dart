import 'package:nile_brand/core/routing/exports.dart';

class IsSelectedImageWidget extends StatelessWidget {
  const IsSelectedImageWidget({
    super.key,
    required this.selectedColor,
  });

  final ValueNotifier<int> selectedColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: 100.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ...List.generate(
              5,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.w),
                  child: Container(
                    height: 7.h,
                    width: 7.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7.r)),
                      color: selectedColor.value == index
                          ? ColorManager.mainColor
                          : ColorManager.grayD9,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
