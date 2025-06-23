import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;
import '../../../data/models/product_model.dart';
import 'buy_button.dart';

class AddPRroductToCartBlocConsumer extends StatelessWidget {
  const AddPRroductToCartBlocConsumer({
    super.key,
    required this.isCarted,
    required this.product,
    required this.productId,
  });

  final ValueNotifier<bool> isCarted;
  final ProductModel product;
  final String productId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocConsumer<AddProductToCartCubit, AddProductToCartState>(
          listener: (context, state) {
            if (state is AddProductToCartSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Prdouct add successfully'),
              ));

              getIt.get<GetMyCartCubit>().getMyCart();
            } else if (state is AddProductToCartError) {
              if (state.error == 'the brand name of products must be equal') {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(state.error),
                  // content: Text(state.error),
                ));
              }
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Prdouct not added'),
              ));
            }
          },
          builder: (context, state) {
            return ValueListenableBuilder<bool>(
              valueListenable: isCarted,
              builder: (context, value, child) {
                return InkWell(
                  onTap: () {
                    isCarted.value = !isCarted.value;
                    if (!value) {
                      context
                          .read<AddProductToCartCubit>()
                          .addProductToCart(product: product);
                    } else if (value) {
                      context
                          .read<DeleteProductFromMyCartCubit>()
                          .deleteProductFromMyCart(
                            productId: productId,
                          );
                    }
                  },
                  child: Container(
                    width: 56.w,
                    height: 43.h,
                    decoration: BoxDecoration(
                      color: ColorManager.grayCA,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Center(
                      child: state is AddProductToCartLoading
                          ? const CircularProgressIndicator()
                          : Image.asset(
                              state is AddProductToCartSuccess
                                  ? Assets.imagesRemoveCart
                                  : Assets.imagesCartIcon,
                              color: !value ? ColorManager.mainColor : null,
                              width: 24.w,
                              height: 24.h,
                            ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        20.hs,
        const BuyButton()
      ],
    );
  }
}
