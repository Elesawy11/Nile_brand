import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/api_constants.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../create_brand/data/models/create_brand_response_body.dart';
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
  return FutureBuilder(
    future: Future.wait([
      BrandPrefs.getToken(),
      BrandStorage.getBrandData(),
    ]),
    builder: (context, snapshot) {
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator());
      }

      final token = snapshot.data![0] as String;
      final brandData = snapshot.data![1] as BrandData;

      return BlocProvider(
        create: (context) => BrandProductsCubit(
          BrandProductsRepo(
            BrandProductsService(
              DioFactory.getDio()
                ..options.headers = {
                  "Content-Type": "multipart/form-data",
                  "Authorization": "Bearer $token",
                  "X-Requested-With": "XMLHttpRequest"
                },
              baseUrl: ApiConstants.baseUrl,
            ),
          ),
        )..getProducts(widget.brandId),
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  21.vs,
                  OwnerSearchWidgetWithLogo(
                    brandLogo: brandData.logo,
                  ),
                  53.vs,
                  Expanded(
                    child: BlocBuilder<BrandProductsCubit, BrandProductsState>(
                      builder: (context, state) {
                        if (state is BrandProductsLoading) {
                          return const Center(child: CircularProgressIndicator());
                        } else if (state is BrandProductsFailure) {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Assets.imagesNoProductsCreated,
                                  height: 220.h,
                                  width: 220.w,
                                ),
                                15.vs,
                                Text(
                                  "No Products Added yet!",
                                  style: TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.mainColor,
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else if (state is BrandProductsSuccess) {
                          final products = state.products;
                          if (products.isEmpty) {
                            return const Center(child: Text("Nothing to display"));
                          }

                          return GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20.w,
                              mainAxisExtent: 250.h,
                              mainAxisSpacing: 10.w,
                            ),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              final product = products[index];
                              return BrandProductWidget(
                                productId: product.id,
                                brandId: product.brand.id,
                                name: product.name,
                                sold: product.sold,
                                price: product.price,
                                image: product.coverImage ?? "",
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
  );
}

}

