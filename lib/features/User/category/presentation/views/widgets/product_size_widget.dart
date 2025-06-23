import 'package:nile_brand/core/routing/exports.dart';

class ProductSizeWidget extends StatelessWidget {
  const ProductSizeWidget({
    super.key,
    required this.widget,
    required this.selectedSize,
  });

  final ProductDetailsView widget;
  final ValueNotifier<int> selectedSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
          widget.product.sizes?.length ?? 0,
          (index) {
            return InkWell(
              onTap: () {
                selectedSize.value = index;
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                    color: const Color(0xffF5F7F8),
                    border: selectedSize.value == index
                        ? Border.all(color: ColorManager.mainColor)
                        : null,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Center(
                    child: Text(
                  widget.product.sizes?[index] ?? 'L',
                  style: Styles.font20W600,
                )),
              ),
            );
          },
        )
      ],
    );
  }
}
