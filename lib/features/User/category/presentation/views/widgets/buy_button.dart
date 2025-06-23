import 'package:nile_brand/core/routing/exports.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 219.w,
        height: 43.h,
        decoration: BoxDecoration(
            color: ColorManager.mainColor,
            borderRadius: BorderRadius.all(Radius.circular(8.r))),
        child: Center(
          child: Text(
            "Buy Now",
            style:
                Styles.font20W700.copyWith(fontSize: 21, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
