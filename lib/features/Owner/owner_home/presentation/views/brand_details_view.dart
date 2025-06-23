import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/features/Owner/add_brand_product/data/api/new_product_services.dart';
import 'package:nile_brand/features/Owner/owner_home/data/api/owner_home_services.dart';
import 'package:nile_brand/features/Owner/owner_home/data/repo/owner_home_repo.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/manager/display_products/display_products_cubit.dart';
import 'package:nile_brand/features/User/category/data/api/sub_category_source.dart';
import 'package:nile_brand/features/User/category/data/repo/sub_category_repo_impl.dart';
import 'package:nile_brand/features/User/home/data/data_source/category_remote_data_source.dart';
import 'package:nile_brand/features/User/home/data/repo/category_repo_impl.dart';
// import 'package:nile_brand/features/Owner/create_product/presentation/manager/create_product_cubit.dart';
// import 'package:nile_brand/features/Owner/create_product/data/repo/create_product_repo.dart';
import '../../../add_brand_product/data/repo/create_product_repo.dart';
import '../../../add_brand_product/persentation/manager/create_product/create_product_cubit.dart';
import '../../../create_brand/presentation/views/widgets/dialogs.dart';
import 'widgets/brand_details_text_fields_widgets.dart';

class BrandDetailsView extends StatelessWidget {
  final String productId;
  const BrandDetailsView({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreateProductCubit>(
          create: (_) => CreateProductCubit(
            CreateProductRepo(ProductApiService(DioFactory.getDio())),
          ),
        ),
        BlocProvider<BrandProductsCubit>(
          create: (_) => BrandProductsCubit(
            BrandProductsRepo(BrandProductsService(DioFactory.getDio())),
          ),
        ),
        BlocProvider<GetCategoryCubit>(
          create: (_) => GetCategoryCubit(
              CategoryRepoImpl(HomeRemoteDataSource(DioFactory.getDio())))
            ..emitGetCategories(),
        ),
        BlocProvider<GetSubCategorysCubit>(
          create: (_) => GetSubCategorysCubit(
              SubCategoryRepoImpl(SubCategorySource(DioFactory.getDio())))
            ..getSubCategories(),
        ),
      ],
      child: _BrandDetailsContent(productId: productId),
    );
  }
}

class _BrandDetailsContent extends StatelessWidget {
  final String productId;
  const _BrandDetailsContent({required this.productId});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CreateProductCubit>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text(
            'Update Product Details',
            style: Styles.font24W500.copyWith(fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: BlocConsumer<CreateProductCubit, CreateProductState>(
          listener: (context, state) {
            if (state is UpdateProductSuccessState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Product updated successfully")),
              );

              context.read<BrandProductsCubit>().getProducts();

              context.pop();
            } else if (state is UpdateProductFailureState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Failed to update product")),
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      shadowColor: ColorManager.gray50,
                      child: InkWell(
                        onTap: () async {
                          final picked = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          if (picked != null) {
                            final savedImage =
                                await saveImagePermanently(picked.path);
                            cubit.setCoverImage(savedImage);
                          }
                        },
                        child: cubit.coverImage != null
                            ? Image.file(
                                File(cubit.coverImage!.path),
                                width: 90.r,
                                height: 90.r,
                              )
                            : Image.asset(
                                Assets.imagesBrandItem,
                                width: 90.r,
                                height: 90.r,
                              ),
                      ),
                    ),
                    16.vs,
                    BrandDetailsTextFieldsWidgets(
                      category: context.read<GetCategoryCubit>().categoryList,
                      subCategory:
                          context.read<GetSubCategorysCubit>().subCategories,
                    ),
                    35.vs,
                    SizedBox(
                      width: 192.w,
                      child: AppTextButton(
                        backgroundColor: ColorManager.mainColor,
                        text: state is UpdateProductLoadingState
                            ? 'Saving...'
                            : 'Save changes',
                        onPressed: () async {
                          await cubit.updateProduct(productId);
                        },
                      ),
                    ),
                    35.vs,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
