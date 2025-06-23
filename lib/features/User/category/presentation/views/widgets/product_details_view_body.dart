import 'package:nile_brand/core/routing/exports.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({
    super.key,
    required this.selectedColor,
    required this.widget,
    required this.selectedSize,
    required TabController tabController,
    required this.productInfo,
  }) : _tabController = tabController;

  final ValueNotifier<int> selectedColor;
  final ProductDetailsView widget;
  final ValueNotifier<int> selectedSize;
  final TabController _tabController;
  final List<Widget> productInfo;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          children: [
            35.vs,
            ValueListenableBuilder<int>(
                valueListenable: selectedColor,
                builder: (context, v, c) {
                  return Column(
                    children: [
                      ProductImages(
                        productId: widget.product.id ?? '',
                        isFavorite: widget.isFavorite,
                        selectedColor: selectedColor,
                        productImage:
                            widget.product.images![selectedColor.value],
                      ),
                      20.vs,
                      ProductColors(
                        selectedColor: selectedColor,
                        productImages: widget.product.images!,
                      ),
                    ],
                  );
                }),
            16.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Text(
                    "Sizes",
                    style: Styles.font24W500
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 20.sp),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        '(${widget.product.ratingAverage})',
                        style: Styles.font14W500.copyWith(color: Colors.yellow),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.w,
                      )
                    ],
                  )
                ],
              ),
            ),
            8.vs,
            Center(
                child: SizedBox(
              width: 200,
              child: ValueListenableBuilder<int>(
                  valueListenable: selectedSize,
                  builder: (context, _, c) {
                    return ProductSizeWidget(
                        widget: widget, selectedSize: selectedSize);
                  }),
            )),
            10.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ProductNameAndPriceWidget(widget: widget),
            ),
            Center(
                child: DetailsTabView(
              productId: widget.product.id!,
              tabController: _tabController,
            )),
            14.vs,
            productInfo[_tabController.index]
          ],
        ),
      )
    ]);
  }
}
