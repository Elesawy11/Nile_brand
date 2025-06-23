import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/owner_home/data/models/all_products_response_body.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/manager/display_products/display_products_cubit.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/manager/display_products/display_products_state.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class BrandProductWidget extends StatelessWidget {
  final BrandProductModel productModel;
 

  const BrandProductWidget({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 147.r,
      height: 197.r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(14.r)),
        color: ColorManager.grayD9,
      ),
      // padding: EdgeInsets.symmetric(horizontal: 5.r),
      child: Center(
        child: SizedBox(
          width: 120.r,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () =>
                    context.push(Routes.brandDetails, extra: productModel.id),
                child: productModel.coverImage != ""
                    ? Image.network(
                        productModel.coverImage!.contains("https")? "${productModel.coverImage}" : "https://nile-brands.up.railway.app/products/${productModel.coverImage}",
                        width: 120.r,
                        height: 113.r,
                      )
                    : const Center(
                        child: Icon(
                        Icons.image_not_supported_sharp,
                        size: 50,
                      )),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  productModel.name,
                  style: Styles.font12W300
                      .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
                ),
              ),
              10.vs,
              Row(
                children: [
                  const Text(
                    "Sold : ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: ColorManager.blue33),
                  ),
                  Text("${productModel.sold}",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey))
                ],
              ),
              10.vs,
              SizedBox(
                width: 120.r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${productModel.price} L.E',
                      style: Styles.font12W500.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.blue33),
                    ),
                    InkWell(
                      onTap: () async {
                        await context
                            .read<BrandProductsCubit>()
                            .deleteBrandProduct(productModel.id);

                        // await context.read<BrandProductsCubit>().getProducts();
                      },
                      child: context.read<BrandProductsCubit>().state
                              is DeleteBrandProductLoading
                          ? CircularProgressIndicator(
                              color: Colors.blue,
                              strokeWidth: 10.w,
                            )
                          : Image.asset(
                              Assets.imagesDeleteIcon,
                              width: 16.r,
                              height: 16.r,
                            ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
