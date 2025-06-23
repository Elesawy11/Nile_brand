import 'package:nile_brand/core/routing/exports.dart';

import '../../../data/models/cart_product_model.dart';
import '../../cubits/delete_product_from_my_cart_cubit/delete_product_from_my_cart_state.dart';

class DeleteProdctFromCartWidget extends StatelessWidget {
  const DeleteProdctFromCartWidget({
    super.key,
    required this.cartProduct,
  });

  final CartProductModel cartProduct;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteProductFromMyCartCubit,
        DeleteProductFromMyCartState>(
      listener: (context, state) {
        if (state is DeleteProductSuccess) {
          context.read<GetMyCartCubit>().getMyCart();
        }
      },
      child: InkWell(
        onTap: () {
          context
              .read<DeleteProductFromMyCartCubit>()
              .deleteProductFromMyCart(productId: cartProduct.id ?? '');
        },
        child: Icon(
          Icons.close,
          color: const Color.fromARGB(255, 194, 19, 19),
          size: 19.r,
        ),
      ),
    );
  }
}
