import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/Admin/systm_users/data/api/system_users_source.dart';
import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../Owner/create_brand/presentation/views/widgets/dialogs.dart';
import '../data/repo/system_users_repo.dart';
import 'manager/system_user_cubit.dart';
import 'manager/system_user_state.dart';

class CreateSystemUser extends StatefulWidget {
  const CreateSystemUser({super.key});

  @override
  State<CreateSystemUser> createState() => _CreateSystemUserState();
}

class _CreateSystemUserState extends State<CreateSystemUser> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> conmfPass = ValueNotifier<bool>(true);

  Future<void> pickImage(SystemUsersCubit cubit) async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      final savedImage = await saveImagePermanently(picked.path);
      cubit.setImage(savedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Create System User",
            style: Styles.font30W700.copyWith(fontSize: 25.sp),
          ),
        ),
        body: BlocProvider<SystemUsersCubit>(
          create: (context) => SystemUsersCubit(SystemUsersRepo(
              systemUsersSource: SystemUsersSource(DioFactory.getDio()))),
          child: Padding(
            padding: 12.allEdgeInsets,
            child: BlocConsumer<SystemUsersCubit, SystemUsersState>(
              listener: (context, state) {
                //  final cubit = context.read<SystemUsersCubit>();
                if (state is SystemUserCreateSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Created: ${state.newUser.name}')),
                  );
                  Navigator.pop(context); // go back after success
                } else if (state is SystemUsersFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.error)),
                  );
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      20.vs,
                      GestureDetector(
                        onTap: () =>
                            pickImage(context.read<SystemUsersCubit>()),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              context.read<SystemUsersCubit>().selectedImage !=
                                      null
                                  ? FileImage(context
                                      .read<SystemUsersCubit>()
                                      .selectedImage!)
                                  : const AssetImage(Assets.imagesProfileImage)
                                      as ImageProvider,
                        ),
                      ),
                      10.vs,
                      Text('Tap to select Image', style: Styles.font16W400),
                      10.vs,
                      SizedBox(
                        height: 52.h,
                        width: 340.w,
                        child: AppTextFormField(
                          controller:
                              context.read<SystemUsersCubit>().nameController,
                          labelText: "Name",
                          hintText: "user name",
                          validator: (p0) {},
                        ),
                      ),
                      25.vs,
                      SizedBox(
                        height: 52.h,
                        width: 340.w,
                        child: AppTextFormField(
                          controller:
                              context.read<SystemUsersCubit>().emailController,
                          labelText: "Email",
                          hintText: "example@gmail.com",
                          validator: (p0) {},
                        ),
                      ),
                      25.vs,
                      SizedBox(
                        height: 52.h,
                        width: 340.w,
                        child: AppTextFormField(
                          controller:
                              context.read<SystemUsersCubit>().roleController,
                          labelText: "Role",
                          hintText: "admin , owner , customer",
                          validator: (p0) {},
                        ),
                      ),
                      25.vs,
                      SizedBox(
                        height: 52.h,
                        width: 340.w,
                        child: PasswordField(
                          viewPass: viewPass,
                          controller: context
                              .read<SystemUsersCubit>()
                              .passwordController,
                          labelText: "Password",
                          hintText: "password",
                        ),
                      ),
                      25.vs,
                      SizedBox(
                        height: 52.h,
                        width: 340.w,
                        child: PasswordField(
                          viewPass: conmfPass,
                          controller: context
                              .read<SystemUsersCubit>()
                              .confirmPasswordController,
                          labelText: "Confirm Password",
                          hintText: "confirm Password",
                        ),
                      ),
                      40.vs,
                      if (state is SystemUsersLoading)
                        const CircularProgressIndicator()
                      else
                        SizedBox(
                          width: 150.w,
                          child: AppTextButton(
                            backgroundColor: ColorManager.mainColor,
                            text: "Save",
                            onPressed: () async {
                              await context
                                  .read<SystemUsersCubit>()
                                  .createSystemUser();
                            },
                          ),
                        )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
