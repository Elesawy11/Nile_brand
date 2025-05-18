import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/manager/display_products/display_products_cubit.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class BrandProductWidget extends StatelessWidget {
  final String name;
  final num price;
  final String brandId;
  final String productId;
  final String image;
  final num sold;
  const BrandProductWidget({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.sold,
    required this.brandId,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.push(Routes.brandDetails),
      child: Container(
        width: 147.r,
        height: 197.r,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(14.r)),
          color: ColorManager.grayD9,
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.r),
        child: Center(
          child: SizedBox(
            width: 120.r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                image != ""
                    ? Image.network(
                        "https://nile-brands.up.railway.app/products/$image",
                        width: 120.r,
                        height: 113.r,
                      )
                    : Center(
                        child: Icon(
                        Icons.image_not_supported_sharp,
                        size: 50,
                      )),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    style: Styles.font12W300
                        .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                20.vs,
                Row(
                  children: [
                    Text(
                      "Sold : ",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: ColorManager.blue33),
                    ),
                    Text("$sold",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey))
                  ],
                ),
                20.vs,
                SizedBox(
                  width: 120.r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$price L.E',
                        style: Styles.font12W500.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: ColorManager.blue33),
                      ),
                      InkWell(
                        //TODO: delete method
                        onTap: () {
                          context
                              .read<BrandProductsCubit>()
                              .deleteBrandProduct(brandId, productId);
                        },
                        child: Image.asset(
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
      ),
    );
  }
}
