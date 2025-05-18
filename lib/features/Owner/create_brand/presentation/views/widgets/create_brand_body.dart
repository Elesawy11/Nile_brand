import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
<<<<<<< HEAD
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/Owner/create_brand/presentation/manager/create_brand_cubit/create_brand_cubit.dart';
import 'package:nile_brand/features/Owner/create_brand/presentation/manager/create_brand_cubit/create_brand_state.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/features/Owner/create_brand/presentation/views/widgets/dialogs.dart';
=======
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../../../../../core/widgets/app_text_button.dart';
import '../../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../User/profile/presentation/views/widgets/profile_image.dart';
>>>>>>> 385f745cea92f02bf1c315857a1735a757b3f468


class CreateBrandBody extends StatefulWidget {
  const CreateBrandBody({super.key});

  @override
  State<CreateBrandBody> createState() => _CreateBrandBodyState();
}

class _CreateBrandBodyState extends State<CreateBrandBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateBrandCubit, CreateBrandState>(
      listener: (context, state) async {
        if (state is CreateBrandSuccess) {
          showSuccessDialog(context);
        } else if (state is CreateBrandFailure) {
          showAlertDialog(
            context,
            state.errorMessage,
            "Error",
            Colors.red,
            () {},
          );
        }
      },
      builder: (context, state) {
        final cubit = context.read<CreateBrandCubit>();

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                20.vs,
                Align(
                  alignment: Alignment.topLeft,
                  child: Text('Create Brand', style: Styles.font35W700),
                ),
                30.vs,

                // ==== Logo Picker ====
                GestureDetector(
                  onTap: () async {
                    final picked = await ImagePicker()
                        .pickImage(source: ImageSource.gallery);
                    if (picked != null) {
                      final savedImage =
                          await saveImagePermanently(picked.path);
                      cubit.setLogo(savedImage);
                    }
                  },
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: cubit.logoPng.path.isNotEmpty
                        ? FileImage(File(cubit.logoPng.path))
                        : AssetImage(Assets.imagesProfileImage)
                            as ImageProvider,
                  ),
                ),
                10.vs,
                Text('Tap to select logo', style: Styles.font16W400),

                30.vs,

                // ==== Brand Name ====
                AppTextFormField(
                  controller: cubit.nameController,
                  hintText: "Brand Name",
                  labelText: "Name",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Name is required';
                    }
                    return null;
                  },
                ),
                20.vs,

                // ==== Description ====
                AppTextFormField(
                  controller: cubit.descriptionController,
                  hintText: "Description",
                  labelText: "Description",
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Description is required';
                    }
                    return null;
                  },
                ),
                20.vs,

                // ==== Tax ID ====
                AppTextFormField(
                  controller: cubit.taxIdController,
                  hintText: "123456789",
                  labelText: "Tax ID",
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Tax ID is required';
                    }
                    return null;
                  },
                ),

                40.vs,

                // ==== Submit Button ====
                SizedBox(
                  width: double.infinity,
                  child: AppTextButton(
                    backgroundColor: ColorManager.mainColor,
                    onPressed: state is CreateBrandLoading
                        ? null
                        : () async {
                            if (_formKey.currentState!.validate()) {
                              if (cubit.logoPng.path.isEmpty) {
                                showAlertDialog(
                                    context,
                                    "Please select a logo",
                                    "Missing Logo",
                                    Colors.orange,
                                    () {});
                                return;
                              }
                              await cubit.createBrand();
                              //   context.pushReplacement(Routes.ownerHome,
                              //       extra: BrandPrefs.brandId);
                            }
                          },
                    text: state is CreateBrandLoading
                        ? "Submit........"
                        : "Submit",
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



}
