import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';

import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_cubit.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_state.dart';

import 'widgets/cuopon_item_widget.dart';

class CuoponView extends StatelessWidget {
  const CuoponView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage Coupons',
            style: Styles.font35W700.copyWith(fontSize: 30.sp),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            await context.read<GetCuponsCubit>().getAllCupons();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Column(
              children: [
                35.vs,
                InkWell(
                  onTap: () => context.push(Routes.createCuopon),
                  child: Row(
                    children: [
                      Image.asset(
                        Assets.imagesCuoponIcon,
                        height: 24.r,
                        width: 24.r,
                      ),
                      15.hs,
                      Text(
                        'Create Coupon',
                        style: Styles.font24W500
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                      const Spacer(),
                      const Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
                12.vs,
                BlocBuilder<GetCuponsCubit, ManageCuponState>(
                  builder: (context, state) {
                    return ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        collapsedShape: Border.all(color: Colors.white),
                        shape: ShapeBorder.lerp(Border.all(color: Colors.white),
                            Border.all(color: Colors.white), 0.5),
                        title: Row(
                          children: [
                            Image.asset(
                              Assets.imagesDarkModeIcon,
                              height: 24.r,
                              width: 24.r,
                            ),
                            15.hs,
                            Text(
                              'View All Coupons',
                              style: Styles.font24W500
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        children: [
                          SizedBox(
                            height: context.screenHeight * 0.6,
                            child: ListView.builder(
                                itemCount: context
                                    .read<GetCuponsCubit>()
                                    .myCupons
                                    .length,
                                shrinkWrap: true,
                                itemBuilder: (cxt, index) {
                                  return CuoponItemWidget(
                                    cubit: context.read<GetCuponsCubit>(),
                                    cupon: context
                                        .read<GetCuponsCubit>()
                                        .myCupons[index],
                                  );
                                }),
                          )
                        ]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
