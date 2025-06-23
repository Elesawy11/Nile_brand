import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/Admin/manage_brands/data/models/brand_model.dart';
import 'package:nile_brand/features/Admin/manage_brands/views/manager/system_brands_cubit.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';

class CustomeBrandItem extends StatelessWidget {
  final SystemBrand brand;
  const CustomeBrandItem({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 190.w,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        color: ColorManager.grayD9,
      ),
      // padding: EdgeInsets.only(top: 5.h, left: 8.r, right: 8.r),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child:brand.logo == null ? const Icon(Icons.image_not_supported_outlined): Image.network(
              brand.logo!,
              // "assets/images/test_brand.png",
              width: 170.w,
              height: 125.r,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.w, left: 5.w),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    brand.name,
                    style: Styles.font12W300.copyWith(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF242526)),
                  ),
                  Text(
                    ' Owner : ${brand.owner.name}',
                    style: Styles.font12W300.copyWith(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF242526)),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 35.r,
              child: InkWell(
                onTap: () {
                  context.read<SystemBrandsCubit>().deleteBrand(brand.id);
                },
                child: Image.asset(
                  Assets.imagesDeleteIcon,
                  width: 16.r,
                  height: 16.r,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
