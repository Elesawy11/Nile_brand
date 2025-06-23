import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Admin/manage_brands/data/api/all_brands_source.dart';
import 'package:nile_brand/features/Admin/manage_brands/data/repo/system_brands_repo.dart';
import 'package:nile_brand/features/Admin/manage_brands/views/manager/system_brands_cubit.dart';
import 'package:nile_brand/features/Admin/manage_brands/views/widgets/brand_shimmer.dart';
import 'package:nile_brand/features/Admin/manage_brands/views/widgets/custome_brand_item.dart';
import 'manager/system_brands_state.dart';

class ManageBrandsView extends StatelessWidget {
  const ManageBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SystemBrandsCubit(SystemBrandsRepo(
          allBrandsSource: AllBrandsSource(DioFactory.getDio())))
        ..getAllBrands(),
      child: BlocConsumer<SystemBrandsCubit, SystemBrandsState>(
        listener: (context, state) {
          if (state is SystemBrandsError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          } else if (state is BrandDeleteSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );

            context.read<SystemBrandsCubit>().getAllBrands();
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(
                  "All Brands",
                  style: Styles.font30W700.copyWith(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              body: RefreshIndicator(
                onRefresh: () async{
                  await context.read<SystemBrandsCubit>().getAllBrands();
                  
                },
                child: Padding(
                  padding: 17.ph,
                  child: state is SystemBrandsLoading
                      ? GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20.w,
                            mainAxisSpacing: 10.w,
                            mainAxisExtent: 200.h,
                          ),
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return const BrandShimmerItem();
                          },
                        )
                      : state is SystemBrandsLoaded
                          ? GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.w,
                                mainAxisSpacing: 10.w,
                                mainAxisExtent: 200.h,
                              ),
                              itemCount: state.brands.length,
                              itemBuilder: (context, index) {
                                final brand = state.brands[index];
                                return CustomeBrandItem(
                                  brand: brand, 
                                );
                              },
                            )
                          : const Center(child: Text("No Brands Found")),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
