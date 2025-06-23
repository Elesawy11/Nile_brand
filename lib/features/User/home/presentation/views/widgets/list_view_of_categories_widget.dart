import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/categort_shimmer.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import '../../cubits/get_category_cubit/get_category_state.dart';
import 'category_item_widget.dart';

class ListViewOfCategoreisWidget extends StatelessWidget {
  const ListViewOfCategoreisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCategoryCubit, GetCategoryState>(
      buildWhen: (previous, current) {
        return current is CategorySuccess ||
            current is CategoryLoading ||
            current is CategoryError ||
            current is CategoryPaginationLoading ||
            current is CategoryPaginationError;
      },
      builder: (context, state) {
        return state is CategorySuccess
            ? ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 120.h,
                    child: CategoryItemWidget(
                      isImageUrlTrue:
                          state.categories[index].categoryImage != null,
                      title: state.categories[index].name ?? "not found",
                      imageUrl: state.categories[index].categoryImage ??
                          Assets.imagesNotFoundImage,
                    ),
                  );
                },
              )
            : state is CategoryLoading
                ? const CategoryShimeer()
                : state is CategoryError
                    ? Center(
                        child: Text(state.error),
                      )
                    : state is CategoryPaginationError
                        ? Center(
                            child: Text(state.error),
                          )
                        : const SizedBox();
      },
    );
  }
}
