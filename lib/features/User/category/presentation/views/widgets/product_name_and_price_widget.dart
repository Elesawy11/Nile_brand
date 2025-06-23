import 'package:nile_brand/core/routing/exports.dart';

class ProductNameAndPriceWidget extends StatelessWidget {
  const ProductNameAndPriceWidget({
    super.key,
    required this.widget,
  });

  final ProductDetailsView widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.product.name!,
          style: Styles.font24W500
              .copyWith(fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
        Text(
          '${widget.product.price} L.E',
          style: Styles.font24W500
              .copyWith(fontWeight: FontWeight.w600, fontSize: 20.sp),
        ),
      ],
    );
  }
}
