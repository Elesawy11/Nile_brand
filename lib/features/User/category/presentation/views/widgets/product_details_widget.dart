import 'package:nile_brand/core/routing/exports.dart';

import 'add_prdouct_bloc_listener.dart';
import 'add_product_to_wish_list_bloc_listener.dart';
import 'custome_item.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
    required this.widget,
    required ValueNotifier<bool> isFavorite,
    required ValueNotifier<bool> isCarted,
  })  : _isFavorite = isFavorite,
        _isCarted = isCarted;

  final CustomeItem widget;
  final ValueNotifier<bool> _isFavorite;
  final ValueNotifier<bool> _isCarted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xffD9D9D9),
      ),
      child: Column(
        children: [
          const Spacer(),
          isValidUri(
            widget.product.images?.first ?? '',
          )
              ? Image.network(
                  widget.product.images!.first,
                  fit: BoxFit.fill,
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
          12.vs,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 86.w,
                  margin: EdgeInsets.only(top: 7.h),
                  child: Text(
                    widget.product.name ?? 'Not Found',
                    style: Styles.font14W400,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                SizedBox(
                  width: 18.r,
                  height: 18.r,
                  child: AddPrdouctToWishListBlocListener(
                      isFavorite: _isFavorite, widget: widget),
                ),
              ],
            ),
          ),
          12.vs,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '//${widget.product.price} L.E',
                  style: Styles.font14W500,
                ),
                AddProductBlocListener(isCarted: _isCarted, widget: widget),
              ],
            ),
          ),
          12.vs,
        ],
      ),
    );
  }
}
