import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../cubits/get_category_cubit/get_category_state.dart';

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
                scrollDirection: Axis.horizontal,
                itemCount: state.categories.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 120.h,
                    child: Skeletonizer(
                      enabled: state is CategoryLoading ||
                          state is CategoryPaginationLoading,
                      child: CategoryItemWidget(
                        isImageUrlTrue:
                            state.categories[index].categoryImage != null,
                        title: state.categories[index].name ?? "not found",
                        imageUrl: state.categories[index].categoryImage ??
                            Assets.imagesNotFoundImage,
                      ),
                    ),
                  );
                },
              )
            // : state is CategoryLoading
            //     ? const Center(
            //         child: CircularProgressIndicator(),
            //       )
            : state is CategoryError
                ? Center(
                    child: Text(state.error),
                  )
                // : state is CategoryPaginationLoading
                //     ? const Center(
                //         child: CircularProgressIndicator(),
                //       )
                : state is CategoryPaginationError
                    ? Center(
                        child: Text(state.error),
                      )
                    : const SizedBox();
      },
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.isImageUrlTrue,
  });
  final String title;
  final String imageUrl;
  final bool isImageUrlTrue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 18.w, bottom: 7.h),
      child: Column(
        children: [
          isImageUrlTrue
              ? Image.network(
                  imageUrl,
                  height: 87.r,
                  width: 87.r,
                  fit: BoxFit.cover,
                )
              : Image.asset(
                  Assets.imagesNotFoundImage,
                  height: 87.r,
                  width: 87.r,
                  fit: BoxFit.cover,
                ),
          Text(
            title,
            style: Styles.font14W500,
          ),
        ],
      ),
    );
  }
}
