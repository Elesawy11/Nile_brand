import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_cubit.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';
import '../../manager/get_cupons/cupon_state.dart';

class CuoponItemWidget extends StatelessWidget {
  final CreateCuoponSuccess cupon;
  const CuoponItemWidget(
      {super.key, required this.cupon,
});

  @override
  Widget build(BuildContext context) {
    void _showSendDialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text("Send Coupon"),
            content: TextFormField(
              controller: context.read<GetCuponsCubit>().userEmai,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "example@example.com",
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: ColorManager.blue33)),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (context.read<GetCuponsCubit>().userEmai.text.isNotEmpty) {
                    context.read<GetCuponsCubit>().sendCupon(cupon.id!);
                    if (context.read<GetCuponsCubit>().state
                        is SendCuponSucessState) {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                "Coupon sent to ${context.read<GetCuponsCubit>().userEmai.text}")),
                      );
                    } else if (context.read<GetCuponsCubit>().state
                        is ManageCuponFailureState) {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text("Try again or , use other email!")),
                      );
                    }
                  }
                },
                child: Text(
                    context.read<GetCuponsCubit>().state
                            is ManageCuponLoadingState
                        ? "Sending"
                        : "Send",
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          );
        },
      );
    }

    return InkWell(
      onTap: () => context.push(Routes.updateCuopon,extra:cupon ),
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.grayD9,
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        margin: EdgeInsets.only(top: 26.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "Cupon Name",
                  cupon.name!,
                  style: Styles.font20W400.copyWith(
                    color: ColorManager.subText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  // "ED : 24 - 3 - 2025",
                  'ED : ${cupon.expireTime!}',
                  style: Styles.font20W400.copyWith(
                    color: ColorManager.subText,
                    fontSize: 15.sp,
                  ),
                ),
                Text(
                  // "Discount Amount : 20",
                  "Discount Amount : ${cupon.discount!}",
                  style: Styles.font20W400.copyWith(
                    fontSize: 15.sp,
                    color: ColorManager.subText,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    context.read<GetCuponsCubit>().deleteCupon(cupon.id!);
                  },
                  child: Image.asset(
                    Assets.imagesDeleteIcon,
                    height: 24.r,
                    width: 24.r,
                    color: const Color.fromARGB(255, 189, 114, 114),
                  ),
                ),
                8.hs,
                InkWell(
                  onTap: _showSendDialog,
                  child: Icon(
                    Icons.send,
                    size: 24.w,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
