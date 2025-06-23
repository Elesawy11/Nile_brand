import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;

import '../../../../category/data/models/product_model.dart';

class PriceButton extends StatelessWidget {
  const PriceButton({
    super.key,
    required this.price,
    required this.product,
  });
  final String price;

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // price
        Text(
          price,
          style: Styles.font20W600
              .copyWith(fontSize: 18.sp, color: ColorManager.mainColor),
        ),
        const Spacer(),
        BlocListener<AddProductToCartCubit, AddProductToCartState>(
          listener: (context, state) {
            if (state is AddProductToCartSuccess) {
              context.read<GetMyCartCubit>().getMyCart();
            } else if (state is AddProductToCartError) {}
          },
          child: InkWell(
            onTap: () {
              context
                  .read<AddProductToCartCubit>()
                  .addProductToCart(product: product);
            },
            child: Container(
              width: 90.w,
              height: 30.h,
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              decoration: BoxDecoration(
                  color: ColorManager.mainColor,
                  borderRadius: BorderRadius.all(Radius.circular(12.r))),
              child: Center(
                child: Text(
                  "Add To Cart",
                  style: Styles.font14W500.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
