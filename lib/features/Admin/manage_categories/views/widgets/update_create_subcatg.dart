import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_cubit.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_state.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import '../../../../User/home/presentation/cubits/get_category_cubit/get_category_state.dart';

class UpdateCreateSubcatg extends StatefulWidget {
  final String title;
  final String? id;

  const UpdateCreateSubcatg({super.key, required this.title, this.id});

  @override
  State<UpdateCreateSubcatg> createState() => _UpdateCreateSubcatgState();
}

class _UpdateCreateSubcatgState extends State<UpdateCreateSubcatg> {
  String? selectedCategoryId;

  @override
  void initState() {
    super.initState();
    context.read<GetCategoryCubit>().emitGetCategories(isLoadMore: true);
  }

  @override
  Widget build(BuildContext context) {
    final manageCubit = context.read<ManageCatgCubit>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "${widget.title} Subcategory",
            style: Styles.font30W700
                .copyWith(fontSize: 25.sp, fontWeight: FontWeight.bold),
          ),
        ),
        body: BlocConsumer<ManageCatgCubit, ManageCatgState>(
          listener: (context, state) {
            if (state is SubCategoryCreateSuccess ||
                state is SubCategoryUpdateSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                      "Subcategory ${widget.title == "Create" ? "created" : "updated"} successfully"),
                ),
              );
              context.pop();
            } else if (state is ManageCatgFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            return Padding(
              padding: 12.allEdgeInsets,
              child: Column(
                children: [
                  60.vs,
                  SizedBox(
                    height: 50.h,
                    child: AppTextFormField(
                      controller: manageCubit.nameController,
                      labelText: "Name",
                      hintText: "Name",
                      validator: (p0) {
                        if (p0 == null || p0.trim().isEmpty) {
                          return "Name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                  20.vs,
                  BlocBuilder<GetCategoryCubit, GetCategoryState>(
                    builder: (context, catgState) {
                      if (catgState is CategoryLoading) {
                        return const CircularProgressIndicator();
                      } else if (catgState is CategorySuccess) {
                        final categories =
                            context.read<GetCategoryCubit>().categoryList;
                        // Validate selected ID
                        if (selectedCategoryId != null &&
                            !categories
                                .any((cat) => cat.id == selectedCategoryId)) {
                          selectedCategoryId = null;
                        }

                        final selectedId = manageCubit.selectedCategoryId;

                        return widget.title == "Create"
                            ? Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: ExpansionTile(
                                  title: Text(
                                    selectedId == null
                                        ? "Select Category"
                                        : "Category: ${categories.firstWhere((cat) => cat.id == selectedId).name}",
                                  ),
                                  children: categories.map((category) {
                                    return ListTile(
                                      title: Text(category.name ?? ""),
                                      onTap: () {
                                        // print();
                                        context
                                            .read<ManageCatgCubit>()
                                            .selectCategory(category.id ?? "");
                                      },
                                    );
                                  }).toList(),
                                ),
                              )
                            : const SizedBox();
                      } else if (catgState is CategoryError) {
                        return Text(
                            "Failed to load categories: ${catgState.error}");
                      }
                      return const SizedBox();
                    },
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 150.w,
                    child: state is ManageCatgLoading
                        ? const Center(child: CircularProgressIndicator())
                        : AppTextButton(
                            backgroundColor: ColorManager.mainColor,
                            text: widget.title == "Create"
                                ? "Save"
                                : "Save Changes",
                            onPressed: () async {
                              // final name =
                              // manageCubit.nameController.text.trim();

                              if ( widget.title == "Create" && manageCubit.selectedCategoryId == null ||
                                  manageCubit.nameController.text
                                          .trim()
                                          .isEmpty 
                                     ) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text(
                                          "Please enter name and choose category")),
                                );
                                return;
                              }

                              if (widget.title == "Create") {
                                // print(selectedCategoryId)
                                await manageCubit.createSubCategory(
                                    manageCubit.selectedCategoryId!);
                              } else {
                                manageCubit.updateSubCatory(widget.id!);
                              }
                            },
                          ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
