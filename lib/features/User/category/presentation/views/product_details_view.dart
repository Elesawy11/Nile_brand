import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
// import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/descreption_info.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/details_tab_view.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/product_colors.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/product_images.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/reviews_info.dart';
import 'package:nile_brand/features/User/chat/presentation/views/user_owner_chat.dart';
// import 'package:readmore/readmore.dart';

import '../../../../../core/utils/assets.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView>
    with SingleTickerProviderStateMixin {
  ValueNotifier<int> selectedColor = ValueNotifier(0);
  ValueNotifier<int> selectedSize = ValueNotifier(0);
  late TabController _tabController;

  List<Widget> productInfo = [DescreptionInfo(), ReviewsInfo()];

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
    return SafeArea(
        child: Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserOwnerChat(),));
        },
        child: Image.asset(
          Assets.chatWithOwner,
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
                Assets.arOprion,
                height: 24.h,
                width: 24.w,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            35.vs,
            ValueListenableBuilder<int>(
                valueListenable: selectedColor,
                builder: (context, v, c) {
                  return Column(
                    children: [
                      ProductImages(selectedColor: selectedColor),
                      20.vs,
                      ProductColors(selectedColor: selectedColor),
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
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "(4.5)",
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
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...List.generate(
                          3,
                          (index) {
                            return InkWell(
                              onTap: () {
                                selectedSize.value = index;
                              },
                              child: Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                    color: Color(0xffF5F7F8),
                                    border: selectedSize.value == index
                                        ? Border.all(
                                            color: ColorManager.mainColor)
                                        : null,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Center(
                                    child: Text(
                                  "$index",
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
                children: [
                  Text(
                    "Black dress",
                    style: Styles.font24W500
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 20.sp),
                  ),
                  Spacer(),
                  Text(
                    "450 L.E",
                    style: Styles.font24W500
                        .copyWith(fontWeight: FontWeight.w600, fontSize: 20.sp),
                  ),
                ],
              ),
            ),
            Center(
                child: DetailsTabView(
              tabController: _tabController,
            )),
            14.vs,
            productInfo[_tabController.index]
          ],
        ),
      ),
    ));
  }
}
