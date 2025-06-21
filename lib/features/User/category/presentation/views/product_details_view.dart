import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_reviews_cubit/get_reviews_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/descreption_info.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/details_tab_view.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/product_colors.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/product_images.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/reviews_info.dart';
import 'package:nile_brand/features/User/chat/presentation/views/user_owner_chat.dart';
import '../../data/models/product_model.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView(
      {super.key, required this.product, required this.isFavorite});
  final ProductModel product;
  final ValueNotifier<bool> isFavorite;
  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView>
    with SingleTickerProviderStateMixin {
  ValueNotifier<int> selectedColor = ValueNotifier(0);
  ValueNotifier<int> selectedSize = ValueNotifier(0);
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<GetReviewsCubit>()
    //   ..getReviews(widget.product.id!);
    if (_tabController.index == 1) {
      context.read<GetReviewsCubit>().getReviews(widget.product.id!);
    }
    List<Widget> productInfo = [
      DescreptionInfo(
        description: widget.product.description,
        productId: widget.product.id ?? '',
      ),
      ReviewsInfo(
        productId: widget.product.id!,
      )
    ];
    return SafeArea(
        child: Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const UserOwnerChat(),
          ));
        },
        child: Image.asset(
          Assets.imagesChatWithOwnerIcon,
          width: 32.w,
          height: 32.h,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Details",
          style: Styles.font24W500,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: 20.r),
              child: Image.asset(
                Assets.imagesArOption,
                height: 24.h,
                width: 24.w,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(slivers: [
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
                      style: Styles.font24W500.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 20.sp),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          '(${widget.product.ratingAverage})',
                          style:
                              Styles.font14W500.copyWith(color: Colors.yellow),
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
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ...List.generate(
                            widget.product.sizes?.length ?? 0,
                            (index) {
                              return InkWell(
                                onTap: () {
                                  selectedSize.value = index;
                                },
                                child: Container(
                                  width: 42,
                                  height: 42,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF5F7F8),
                                      border: selectedSize.value == index
                                          ? Border.all(
                                              color: ColorManager.mainColor)
                                          : null,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Center(
                                      child: Text(
                                    widget.product.sizes?[index] ?? 'L',
                                    style: Styles.font20W600,
                                  )),
                                ),
                              );
                            },
                          )
                        ],
                      );
                    }),
              )),
              10.vs,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.product.name!,
                      style: Styles.font24W500.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 20.sp),
                    ),
                    Text(
                      '${widget.product.price} L.E',
                      style: Styles.font24W500.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 20.sp),
                    ),
                  ],
                ),
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
      ]),
    ));
  }
}
