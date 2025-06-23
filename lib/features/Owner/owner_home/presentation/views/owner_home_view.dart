import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/product_shimmer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../data/api/owner_home_services.dart';
import '../../data/repo/owner_home_repo.dart';
import '../manager/display_products/display_products_cubit.dart';
import '../manager/display_products/display_products_state.dart';
import 'widgets/brand_product_widget.dart';
import 'widgets/owner_search_widget_with_logo.dart';

class OwnerHomeView extends StatefulWidget {
  final String brandId;
  const OwnerHomeView({super.key, required this.brandId});

  @override
  State<OwnerHomeView> createState() => _OwnerHomeViewState();
}

class _OwnerHomeViewState extends State<OwnerHomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BrandProductsCubit(
        BrandProductsRepo(
          BrandProductsService(DioFactory.getDio()),
        ),
      )..getProducts(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: RefreshIndicator(
                  onRefresh: () async {
                    await context.read<BrandProductsCubit>().getProducts();
                  },
                  child: Column(
                    children: [
                      21.vs,
                      const OwnerSearchWidgetWithLogo(
                        brandLogo: null,
                      ),
                      53.vs,
                      Expanded(
                        child: BlocBuilder<BrandProductsCubit, BrandProductsState>(
                          builder: (context, state) {
                            if (state is BrandProductsLoading) {
                              return const Center(child: ProductShimmer());
                            } else if (state is BrandProductsFailure) {
                              return ListView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                children: [
                                  SizedBox(height: 100.h),
                                  Image.asset(
                                    Assets.imagesNoProductsCreated,
                                    height: 220.h,
                                    width: 220.w,
                                  ),
                                  15.vs,
                                  Center(
                                    child: Text(
                                      "No Products Added yet!",
                                      style: TextStyle(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: ColorManager.mainColor,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else if (state is BrandProductsSuccess) {
                              final products = state.products;
                              if (products.isEmpty) {
                                return ListView(
                                  physics: const AlwaysScrollableScrollPhysics(),
                                  children: const [
                                    SizedBox(height: 100),
                                    Center(child: Text("Nothing to display")),
                                  ],
                                );
                              }

                              return GridView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20.w,
                                  mainAxisExtent: 250.h,
                                  mainAxisSpacing: 10.w,
                                ),
                                itemCount: products.length,
                                itemBuilder: (context, index) {
                                  return BrandProductWidget(
                                    productModel: products[index],
                                  );
                                },
                              );
                            }

                            return const SizedBox.shrink();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
