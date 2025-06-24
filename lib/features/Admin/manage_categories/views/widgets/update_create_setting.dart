import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_cubit.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_state.dart';

import '../../../../Owner/create_brand/presentation/views/widgets/dialogs.dart';

class UpdateCreateCategSetting extends StatelessWidget {
  final String title;
  final String id;

  const UpdateCreateCategSetting({super.key, required this.title, required this.id});

  Future<void> _pickImage(BuildContext context, ManageCatgCubit cubit) async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final savedImage = await saveImagePermanently(picked.path);
      cubit.setImage(savedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ManageCatgCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "$title Category",
          style: Styles.font30W700.copyWith(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocConsumer<ManageCatgCubit, ManageCatgState>(
        listener: (context, state) {
          if (state is CategoryCreateSuccess ||
              state is CategoryUpdateSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Success!')),
            );
            context.pop(); // go back
          } else if (state is ManageCatgFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: 12.allEdgeInsets,
              child: Column(
                children: [
                  60.vs,
                  GestureDetector(
                    onTap: () => _pickImage(context, cubit),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: cubit.catgImage != null
                          ? FileImage(cubit.catgImage!)
                          : const AssetImage('assets/images/profile.png')
                              as ImageProvider,
                    ),
                  ),
                  10.vs,
                  Text('Tap to select Image', style: Styles.font16W400),
                  SizedBox(
                    height: 50.h,
                    child: AppTextFormField(
                      controller: cubit.nameController,
                      labelText: "Name",
                      hintText: "Name",
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return "Name is required";
                        }
                        return null;
                      },
                    ),
                  ),
                  350.vs,
                  SizedBox(
                    width: 150.w,
                    child: state is ManageCatgLoading
                        ? const Center(child: CircularProgressIndicator())
                        : AppTextButton(
                            backgroundColor: ColorManager.mainColor,
                            text: title == "Create" ? "Save" : "Save Changes",
                            onPressed: () async {
                              if (title == "Create") {
                                await cubit.createCategory();
                              } else {
                                
                                await cubit.updateCategory(id);
                              }
                            },
                          ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
