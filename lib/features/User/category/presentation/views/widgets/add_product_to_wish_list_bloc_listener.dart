import 'package:nile_brand/core/routing/exports.dart';
import 'custome_item.dart';

class AddPrdouctToWishListBlocListener extends StatelessWidget {
  const AddPrdouctToWishListBlocListener({
    super.key,
    required ValueNotifier<bool> isFavorite,
    required this.widget,
  }) : _isFavorite = isFavorite;

  final ValueNotifier<bool> _isFavorite;
  final CustomeItem widget;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddProductToWishlistCubit, AddProductToWishlistState>(
      listener: (context, state) {
        if (state is AddProductSuccess) {
          context.read<GetWishListCubit>().getWishListProduct();
        }
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _isFavorite,
        builder: (context, value, child) {
          return InkWell(
            onTap: () {
              _isFavorite.value = !_isFavorite.value;
              if (!value) {
                context
                    .read<AddProductToWishlistCubit>()
                    .addProductToWishlist(productId: widget.product.id ?? '');
              } else if (value) {}
            },
            child: Icon(
              value ? Icons.favorite : Icons.favorite_border_rounded,
              color: value ? Colors.black : null,
            ),
          );
        },
      ),
    );
  }
}
