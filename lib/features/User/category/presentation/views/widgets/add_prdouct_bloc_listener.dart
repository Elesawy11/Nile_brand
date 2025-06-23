import 'package:nile_brand/core/routing/exports.dart';
import '../../../../my_cart/presentation/cubits/delete_product_from_my_cart_cubit/delete_product_from_my_cart_state.dart';
import 'custome_item.dart';

class AddProductBlocListener extends StatelessWidget {
  const AddProductBlocListener({
    super.key,
    required ValueNotifier<bool> isCarted,
    required this.widget,
  }) : _isCarted = isCarted;

  final ValueNotifier<bool> _isCarted;
  final CustomeItem widget;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProductToCartCubit, AddProductToCartState>(
      listener: (context, state) {
        if (state is AddProductToCartSuccess) {
          context.read<GetMyCartCubit>().getMyCart();
        } else if (state is AddProductToCartError) {}
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _isCarted,
        builder: (context, value, child) {
          return BlocListener<DeleteProductFromMyCartCubit,
              DeleteProductFromMyCartState>(
            listener: (context, state) {
              if (state is DeleteProductSuccess) {
                getIt.get<GetMyCartCubit>().getMyCart();
              }
            },
            child: InkWell(
              onTap: () {
                _isCarted.value = !_isCarted.value;
                if (!value) {
                  context.read<AddProductToCartCubit>().addProductToCart(
                        product: widget.product,
                      );
                } else if (value) {
                  context
                      .read<DeleteProductFromMyCartCubit>()
                      .deleteProductFromMyCart(
                          productId: widget.product.id ?? '');
                }
              },
              child: Icon(
                value ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                color: value ? Colors.black : null,
                size: 18.r,
              ),
            ),
          );
        },
      ),
    );
  }
}
