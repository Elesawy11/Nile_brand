import 'package:nile_brand/core/routing/exports.dart' hide CategoryModel;
import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_cubit.dart';
import 'package:nile_brand/features/User/category/data/models/sub_category_model.dart';
import 'package:nile_brand/features/User/home/data/models/category_model.dart';

import '../../../../User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';

class CustomeCatg extends StatefulWidget {
  final String mainTitle;
  final SubCategoryModel? subCategoryInfo;
  final CategoryModel? categoryInfo;
  const CustomeCatg(
      {super.key,
      required this.mainTitle,
      this.subCategoryInfo,
      this.categoryInfo});

  @override
  State<CustomeCatg> createState() => _CustomeCatgState();
}

class _CustomeCatgState extends State<CustomeCatg> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: InkWell(
        onTap: () {
          if (widget.mainTitle.toLowerCase().contains("subcategory")) {
            context.push(Routes.updateSubCategory,
                extra: {"title": "Update", "id": widget.subCategoryInfo!.id});
          } else {
            context.push(Routes.updateCategory,
                extra: {"title": "Update", "id": widget.categoryInfo!.id});
          }
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 10.h),
          width: 291.w,
          height: 75.h,
          decoration: BoxDecoration(
            color: ColorManager.grayD9,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  widget.mainTitle.contains("Category")
                      ? SizedBox(
                          width: 50.w,
                          height: 50.h,
                          child: widget.categoryInfo!.categoryImage == null
                              ? Image.asset(Assets.imagesProfileImage)
                              : widget.categoryInfo!.categoryImage!
                                      .contains("https")
                                  ? Image.network(
                                      widget.categoryInfo!.categoryImage!)
                                  : CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://nile-brands.up.railway.app/categories/${widget.categoryInfo!.categoryImage!}"),
                                      maxRadius: 20.r,
                                      // : 20.r,
                                    ))
                      : const Text(""),
                  13.hs,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      18.vs,
                      Text(
                        widget.mainTitle.toLowerCase().contains("subcategory")
                            ? widget.subCategoryInfo!.name!
                            : widget.categoryInfo!.name!,
                        style: Styles.font20W400.copyWith(
                            fontSize: 16.sp,
                            color: const Color.fromARGB(255, 37, 37, 37)),
                      ),
                    ],
                  ),
                  20.hs,
                ],
              ),
              20.hs,
              InkWell(
                onTap: () async {
                  if (widget.mainTitle.toLowerCase().contains("subcategory")) {
                    await context
                        .read<ManageCatgCubit>()
                        .deleteSubCategory(widget.subCategoryInfo!.id!);

                    await context
                        .read<GetSubCategorysCubit>()
                        .getSubCategories();
                  } else {
                    await context
                        .read<ManageCatgCubit>()
                        .deleteCategory(widget.categoryInfo!.id!);

                    await context
                        .read<GetCategoryCubit>()
                        .emitGetCategories(isLoadMore: true);
                  }
                },
                child: SizedBox(
                  height: 19.h,
                  width: 19.w,
                  child: Image.asset(Assets.imagesDeleteIcon),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
