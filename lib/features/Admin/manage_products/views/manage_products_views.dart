import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Admin/manage_brands/views/widgets/brand_shimmer.dart';
import 'package:nile_brand/features/Admin/manage_products/data/api/system_products_source.dart';
import 'package:nile_brand/features/Admin/manage_products/data/repo/system_products_repo.dart';
import 'package:nile_brand/features/Admin/manage_products/views/widgets/existing_products.dart';


import 'manager/manage_products_cubit.dart';
import 'manager/manage_products_state.dart';

class ManageProductsViews extends StatelessWidget {
 

  const ManageProductsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          SystemProductsCubit(SystemProductsRepo(allProductsSource: SystemProductsSource(DioFactory.getDio())))
            ..getAllProducts(),
      child: BlocConsumer<SystemProductsCubit, SystemProductsState>(
        listener: (context, state) {
          if (state is SystemProductsError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          } else if (state is ProductDeleteSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
            context.read<SystemProductsCubit>().getAllProducts();
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: RefreshIndicator(
              onRefresh: ()async{
               await context.read<SystemProductsCubit>().getAllProducts();

              },
              child: Scaffold(
                appBar: AppBar(
                  title: Text(
                    'Products Management',
                    style: Styles.font30W700.copyWith(
                        fontWeight: FontWeight.bold, fontSize: 25.sp),
                  ),
                ),
                body: Padding(
                  padding: 20.ph,
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(child: SizedBox(height: 14.h)),
                      if (state is SystemProductsLoading)
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.w,
                            mainAxisSpacing: 10.w,
                            childAspectRatio: 3.spMax / 3.8.spMax,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (context, index) => const BrandShimmerItem(),
                            childCount: 6,
                          ),
                        )
                      else if (state is SystemProductsLoaded)
                        SliverGrid(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.w,
                            mainAxisSpacing: 10.w,
                            childAspectRatio: 3.spMax / 3.8.spMax,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final product = state.products[index];
                              return ExistingProducts(product: product);
                            },
                            childCount: state.products.length,
                          ),
                        )
                      else
                        const SliverToBoxAdapter(
                          child: Center(child: Text('No products found')),
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
