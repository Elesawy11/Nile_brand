import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';

import 'package:nile_brand/features/Owner/create_brand/presentation/views/widgets/dialogs.dart';
import '../manager/update_brand/update_brand_cubit.dart';
import '../manager/update_brand/update_brand_state.dart';

import 'package:nile_brand/features/User/auth/presentation/views/widgets/password_field.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/profile_image.dart';


class UpdateBrandBody extends StatefulWidget {
  const UpdateBrandBody({super.key});

  @override
  State<UpdateBrandBody> createState() => _UpdateBrandBodyState();
}

class _UpdateBrandBodyState extends State<UpdateBrandBody> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  void initState() {
    context.read<UpdateBrandCubit>().fillControllers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: BlocConsumer<UpdateBrandCubit, UpdateBrandState>(
          listener: (context, state) async{
            
            if (state is UpdateBrandSuccess) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text("Success"), backgroundColor: Colors.green),
              );
              context.pop();
            } else if (state is UpdateBrandFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(state.message), backgroundColor: Colors.red),
              );
            }
          },
          builder: (context, state) {
            final cubit = context.read<UpdateBrandCubit>();

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: Form(
                  key: key,
                  child: Column(
                    children: [
                      40.vs,
                      GestureDetector(
                        onTap: () async {
                          final picked = await ImagePicker()
                              .pickImage(source: ImageSource.gallery);
                          if (picked != null) {
                            final savedImage =
                                await saveImagePermanently(picked.path);
                            cubit.setImage(savedImage);
                          }
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://nile-brands-backend.up.railway.app/brands/${cubit.logoPath}"),
                        ),
                      ),
                      76.vs,
                      AppTextFormField(
                        controller: cubit.nameController,
                        hintText: "brand name",
                        labelText: "Brand name",
                        validator: (name) {},
                      ),
                      34.vs,
                      AppTextFormField(
                        controller: context
                            .read<UpdateBrandCubit>()
                            .descriptionController,
                        hintText: "brand description",
                        labelText: "Description",
                        validator: (p0) {},
                      ),
                      34.vs,
                      AppTextFormField(
                        keyboardType: TextInputType.number,
                        controller: cubit.taxIdController,
                        hintText: "",
                        labelText: "TaxID",
                        validator: (p0) {},
                      ),
                      116.vs,
                      Padding(
                        padding: 50.ph,
                        child: AppTextButton(
                          backgroundColor: ColorManager.mainColor,
                          text: state is UpdateBrandLoading
                              ? "Saving..."
                              : "Save Changes",
                          onPressed: () {
                            cubit.updateBrand();
                            // context.pop();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
