import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/routing/exports.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
// import 'package:nile_brand/features/Owner/add_brand_product/persentation/views/widgets/add_brand_product_textfields_widget.dart';
import 'package:nile_brand/features/Owner/create_brand/presentation/views/widgets/dialogs.dart';
import 'package:nile_brand/features/User/category/data/api/sub_category_source.dart';
import 'package:nile_brand/features/User/category/data/repo/sub_category_repo_impl.dart';
import 'package:nile_brand/features/User/home/data/data_source/category_remote_data_source.dart';
import 'package:nile_brand/features/User/home/data/repo/category_repo_impl.dart';

import '../../../../../core/widgets/app_text_button.dart';
import '../../../../User/home/presentation/cubits/get_category_cubit/get_category_cubit.dart';
import '../../data/api/new_product_services.dart';
import '../../data/repo/create_product_repo.dart';
import '../manager/create_product/create_product_cubit.dart';
import 'widgets/add_brand_product_textfields_widget.dart';

class AddBrandProductView extends StatefulWidget {
  const AddBrandProductView({super.key});

  @override
  State<AddBrandProductView> createState() => _AddBrandProductViewState();
}

class _AddBrandProductViewState extends State<AddBrandProductView> {
  late final CreateProductCubit createProductCubit;
  late final GetCategoryCubit getCategoriesCubit;
  late final GetSubCategorysCubit getSubCategorysCubit;

  @override
  void initState() {
    super.initState();
    createProductCubit = CreateProductCubit(
      CreateProductRepo(ProductApiService(DioFactory.getDio())),
    );
    getCategoriesCubit = GetCategoryCubit(
      CategoryRepoImpl(HomeRemoteDataSource(DioFactory.getDio())),
    )..emitGetCategories();

    getSubCategorysCubit = GetSubCategorysCubit(
        SubCategoryRepoImpl(SubCategorySource(DioFactory.getDio())))
      ..getSubCategories();
  }

  @override
  void dispose() {
    createProductCubit.close();
    getCategoriesCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: createProductCubit),
        BlocProvider.value(value: getCategoriesCubit),
        BlocProvider.value(value: getSubCategorysCubit)
      ],
      child: BlocConsumer<CreateProductCubit, CreateProductState>(
        listener: (context, state) {
          if (state is CreateProductSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Product Saved Successfully!")),
            );
          } else if (state is CreateProductError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
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
                style: Styles.font24W500.copyWith(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      10.vs,
                      _buildCoverImagePicker(cubit),
                      10.vs,
                      _buildAdditionalImages(cubit),
                      20.vs,
                      AddBrandProductTextFieldsWidgets(
                        category: context.read<GetCategoryCubit>().categoryList,
                        subcategory:
                            context.read<GetSubCategorysCubit>().subCategories,
                      ),
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

  Widget _buildCoverImagePicker(CreateProductCubit cubit) {
    return InkWell(
      onTap: () async {
        final picked =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        if (picked != null) {
          final savedImage = await saveImagePermanently(picked.path);
          cubit.setCoverImage(savedImage);
        }
      },
      child: DottedBorder(
        color: ColorManager.blue33,
        strokeWidth: 2,
        dashPattern: const [6, 3],
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        child: Container(
          width: 70.w,
          height: 97.h,
          decoration: const BoxDecoration(),
          clipBehavior: Clip.hardEdge,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              cubit.coverImage != null
                  ? Image.file(
                      File(cubit.coverImage!.path),
                      width: 70.w,
                      height: 97.h,
                      fit: BoxFit.cover,
                    )
                  : const Icon(Icons.image,
                      size: 27, color: ColorManager.mainColor),
              Visibility(
                  visible: cubit.coverImage == null,
                  child: Text("Pick cover Image")),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalImages(CreateProductCubit cubit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Additional Images",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
        5.vs,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(5, (index) {
            return InkWell(
              onTap: () async {
                final picked =
                    await ImagePicker().pickImage(source: ImageSource.gallery);
                if (picked != null) {
                  final savedImage = await saveImagePermanently(picked.path);
                  cubit.setImages(savedImage);
                }
              },
              child: DottedBorder(
                color: ColorManager.blue33,
                strokeWidth: 2,
                dashPattern: const [6, 3],
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                child: Container(
                  width: 50.w,
                  height: 55.h,
                  decoration: BoxDecoration(),
                  clipBehavior: Clip.hardEdge,
                  child: cubit.productImages.length - 1 > index
                      ? Image.file(
                          File(cubit.productImages[index].path),
                          width: 50.r,
                          height: 55.r,
                          fit: BoxFit.cover,
                        )
                      : const Icon(Icons.image,
                          size: 27, color: ColorManager.mainColor),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
