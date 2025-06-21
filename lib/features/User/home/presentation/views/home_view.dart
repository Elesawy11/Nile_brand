import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_state.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/product_shimmer.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_state.dart';
import '../../../../../core/utils/assets.dart';
import '../../../category/presentation/views/widgets/custome_item.dart';
import 'widgets/list_view_of_categories_widget.dart';
import 'widgets/notification_and_search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: const NotificationAndSearchWidget(),
            ),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'Categories',
                style: Styles.font20W600,
              ),
            ),
            SizedBox(
              height: 120.h,
              child: const ListViewOfCategoreisWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                height: 5.h,
                child: const Divider(
                  color: ColorManager.grayCA,
                  thickness: 1,
                ),
              ),
            ),
            16.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'Products',
                style: Styles.font20W600,
              ),
            ),
            16.vs,
            BlocBuilder<GetProductsCubit, GetProductsState>(
              buildWhen: (previous, current) {
                return current is GetProductSuccess ||
                    current is GetProductLoading ||
                    current is GetProductError;
              },
              builder: (context, state) {
                return state is GetProductSuccess
                    ? Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.w,
                            mainAxisSpacing: 4.w,
                            childAspectRatio: 2 / 2.3,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return CustomeItem(
                              product: state.products[index],
                            );
                          },
                        ),
                      )
                    : state is GetProductError
                        ? Center(
                            child: Image.asset(
                              Assets.imagesNoImage,
                            ),
                          )
                        : state is GetProductLoading
                            ? Expanded(
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    crossAxisSpacing: 4.w,
                                    mainAxisSpacing: 4.w,
                                    childAspectRatio: 2 / 2.3,
                                  ),
                                  itemCount: 20,
                                  itemBuilder: (context, index) {
                                    return const ProductShimmer();
                                  },
                                ),
                              )
                            : const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
