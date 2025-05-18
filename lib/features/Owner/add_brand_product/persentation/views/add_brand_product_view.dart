import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Owner/add_brand_product/persentation/views/widgets/add_brand_product_textfields_widget.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../data/api/new_product_services.dart';
import '../../data/repo/create_product_repo.dart';
import '../manager/create_product/create_product_cubit.dart';

class AddBrandProductView extends StatefulWidget {
  const AddBrandProductView({super.key});

  @override
  State<AddBrandProductView> createState() => _AddBrandProductViewState();
}

class _AddBrandProductViewState extends State<AddBrandProductView> {
  late final CreateProductCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = CreateProductCubit(
      CreateProductRepo(ProductApiService(
        DioFactory.getDio(),
      )),
    ); // تأكد من توفير الـ Repo هنا
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: BlocConsumer<CreateProductCubit, CreateProductState>(
        listener: (context, state) {
          if (state is CreateProductLoading) {
            // يمكن عرض Loader
          } else if (state is CreateProductSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("تم حفظ المنتج بنجاح"),
            ));
          } else if (state is CreateProductError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ));
          }
        },
        builder: (context, state) {
          final cubit = context.read<CreateProductCubit>();

          return Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.white,
              backgroundColor: Colors.white,
              title: Text(
                'Add Product',
                style: Styles.font24W500
                    .copyWith(fontSize: 30.sp, fontWeight: FontWeight.w700),
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () async {
                          final ImagePicker picker = ImagePicker();
                          try {
                            final XFile? image = await picker.pickImage(
                                source: ImageSource.gallery);
                            if (image != null &&
                                await File(image.path).exists()) {
                              cubit.setCoverImage(image);
                            }
                          } catch (e) {
                            log(e.toString());
                          }
                        },
                        child: cubit.coverImage != null
                            ? Image.file(
                                File(cubit.coverImage!.path),
                                width: 90.r,
                                height: 90.r,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                Assets.imagesAddImage,
                                width: 90.r,
                                height: 90.r,
                              ),
                      ),
                      10.vs,
                      const AddBrandProductTextFieldsWidgets(),
                      22.vs,
                      SizedBox(
                        width: 192.w,
                        child: AppTextButton(
                          backgroundColor: ColorManager.mainColor,
                          text: 'Save',
                          onPressed: () => cubit.submitProduct(),
                        ),
                      ),
                      35.vs,
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
