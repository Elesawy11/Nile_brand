import 'package:nile_brand/core/routing/exports.dart';
import 'is_selected_image_widget.dart';

class ProductImages extends StatelessWidget {
  final ValueNotifier<int> selectedColor;
  final String productImage;
  final String productId;
  final ValueNotifier<bool> isFavorite;
  const ProductImages(
      {super.key,
      required this.selectedColor,
      required this.productImage,
      required this.isFavorite,
      required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<GetWishListCubit>(),
      child: Center(
        child: Container(
          height: 204.h,
          width: 175.w,
          padding: EdgeInsets.only(right: 11.w, left: 11.w, top: 18.h),
          decoration: BoxDecoration(
            color: const Color(0xffF5F7F8),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withValues(alpha: .4),
                  offset: const Offset(1, 1),
                  blurRadius: 4.r)
            ],
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              BlocListener<AddProductToWishlistCubit,
                  AddProductToWishlistState>(
                listener: (context, state) {
                  if (state is AddProductSuccess) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Prdouct add successfully'),
                    ));

                    context.read<GetWishListCubit>().getWishListProduct();
                  } else if (state is AddProductError) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Prdouct not added'),
                    ));
                  }
                },
                child: ValueListenableBuilder<bool>(
                  valueListenable: isFavorite,
                  builder: (context, value, child) {
                    return Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () {
                            isFavorite.value = isFavorite.value;
                            if (!value) {
                              context
                                  .read<AddProductToWishlistCubit>()
                                  .addProductToWishlist(
                                    productId: productId,
                                  );
                            } else if (value) {
                              context
                                  .read<DeleteFromWishlistCubit>()
                                  .deleteProductFromMyWishlist(
                                    productId: productId,
                                  );
                            }
                          },
                          child: Icon(
                            value
                                ? Icons.favorite
                                : Icons.favorite_border_rounded,
                            color: value ? Colors.black : null,
                          ),
                        ));
                  },
                ),
              ),
              isValidUri(
                productImage,
              )
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.network(
                        productImage,
                        fit: BoxFit.fill,
                      ),
                    )
                  : SizedBox(
                      width: 60.r,
                      height: 60.r,
                      child: Image.asset(
                        Assets.imagesNoImage,
                        width: 20.r,
                        height: 20.r,
                        // fit: BoxFit.fill,
                      ),
                    ),
              IsSelectedImageWidget(selectedColor: selectedColor)
            ],
          ),
        ),
      ),
    );
  }
}
