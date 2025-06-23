import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;

import '../../../../category/data/models/product_model.dart';
import '../../cubits/delete_from_wishlist_cubit/delete_from_wishlist_state.dart';

class DeleteProductFromWishListBlocListener extends StatelessWidget {
  const DeleteProductFromWishListBlocListener({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteFromWishlistCubit, DeleteFromWishlistState>(
      listener: (context, state) {
        if (state is DeleteProductSuccess) {
          context.read<GetWishListCubit>().getWishListProduct();
        }
      },
      child: InkWell(
        onTap: () {
          context.read<DeleteFromWishlistCubit>().deleteProductFromMyWishlist(
                productId: product.id ?? '',
              );
        },
        child: Icon(
          Icons.close,
          color: const Color.fromARGB(255, 194, 30, 19),
          size: 19.r,
        ),
      ),
    );
  }
}
