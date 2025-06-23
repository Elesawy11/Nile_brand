import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Admin/systm_users/data/api/system_users_source.dart';
import 'package:nile_brand/features/Admin/systm_users/data/repo/system_users_repo.dart';
import 'package:nile_brand/features/Admin/systm_users/views/manager/system_user_cubit.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class UpdateUserInfo extends StatelessWidget {
  final String id;
  const UpdateUserInfo({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<SystemUsersCubit>(
        create: (context) => SystemUsersCubit(SystemUsersRepo(
            systemUsersSource: SystemUsersSource(DioFactory.getDio()))),
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Update System User",
                style: Styles.font30W700
                    .copyWith(fontSize: 25.sp, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: 12.allEdgeInsets.copyWith(bottom: 40.h),
                child: Column(
                  children: [
                    60.vs,
                    SizedBox(
                      height: 52.h,
                      width: 340.w,
                      child: Builder(
  builder: (context) {
    return SizedBox(
      height: 52.h,
      width: 340.w,
      child: AppTextFormField(
        controller: context.read<SystemUsersCubit>().nameController,
        labelText: "Name",
        hintText: "user name",
        validator: (p0) {},
      ),
    );
  },
),
                    ),
                    // 30.vs,
                    // SizedBox(
                    //  height: 52.h,
                    // width: 340.w,
                    //   child: AppTextFormField(
                    //     labelText: "Role",
                    //     hintText: "role",
                    //     validator: (p0) {},
                    //   ),
                    // ),
                    320.vs,
                    SizedBox(
                        width: 150.w,
                        child: Builder(
                          builder: (context) {
                            return AppTextButton(
                                backgroundColor: ColorManager.mainColor,
                                text: "Save Changes",
                                onPressed: () async{
                                 await  context
                                      .read<SystemUsersCubit>()
                                      .updateSystemUser(id);
                                  context.pop();
                                }
                                );
                          }
                        )
                            )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
