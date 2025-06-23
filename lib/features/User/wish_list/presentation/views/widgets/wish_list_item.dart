import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;
import '../../../../category/data/models/product_model.dart';
import 'delete_product_from_wish_list_bloc_listener.dart';
import 'price_button.dart';

class WishListItem extends StatelessWidget {
  const WishListItem({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 17.h),
      child: Container(
        width: MediaQuery.of(context).size.width * .9,
        height: 144.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 0),
                  color: Colors.black.withValues(alpha: .4),
                  blurRadius: 4.r)
            ]),
        child: Row(
          children: [
            Image.asset(
              Assets.imagesTestItem,
              width: 127.w,
              height: 144.h,
              fit: BoxFit.cover,
            ),
            6.hs,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 187.w,
                        child: Text(
                          product.name ?? 'not found',
                          overflow: TextOverflow.ellipsis,
                          style: Styles.font20W400,
                        ),
                      ),
                      const Spacer(),
                      DeleteProductFromWishListBlocListener(product: product),
                      7.hs
                    ],
                  ),
                  // product id
                  Text(
                    product.category?.name ?? 'not found',
                    style: Styles.font17W400.copyWith(
                      color: ColorManager.subText,
                    ),
                  ),

                  Expanded(
                    child: SizedBox(
                      height: 80.h,
                      child: Text(
                        product.description ?? 'not found',
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font16W400,
                        softWrap: true,
                        maxLines: 4,
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h, right: 2.w),
                    child: PriceButton(
                      product: product,
                      price: product.price.toString(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
