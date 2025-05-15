import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../cubits/get_sub_categories_cubit/get_sub_categorys_state.dart';

class SubcategoriyBar extends StatelessWidget {
  // final List<SubCategoryModel> subCategoryList;
  const SubcategoriyBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // from getCategoryProductsCubit

    return Container(
      padding: 10.ph,
      decoration: const BoxDecoration(
        border: Border(right: BorderSide(color: Colors.black)),
        color: Colors.white,
      ),
      height: double.infinity,
      width: 120.w,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: BlocBuilder<GetSubCategorysCubit, GetSubCategorysState>(
          buildWhen: (previous, current) {
            return current is SubCategoryLoading ||
                current is SubCategorySuccess ||
                current is SubCategoryError;
          },
          builder: (context, state) {
            return state is SubCategorySuccess
                ? Skeletonizer(
                    enabled: state is SubCategoryLoading,
                    child: Column(
                      children: state.subCategories
                          .map((subcategory) => Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: InkWell(
                                    onTap: () {
                                      context
                                          .read<GetProductsCubit>()
                                          .getSubCategoryProducts(
                                            subcategory.id!,
                                          );
                                    },
                                    child: Text(
                                      subcategory.name ?? 'Not Found',
                                      style: Styles.font16W400,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
                  )
                : state is SubCategoryError
                    ? Text(
                        state.error,
                        style: Styles.font16W400,
                      )
                    : const SizedBox();
          },
        ),
      ),
    );
  }
}
