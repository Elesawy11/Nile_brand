import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

import 'widgets/cuopon_item_widget.dart';

class CuoponView extends StatelessWidget {
  const CuoponView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            children: [
              Text(
                'Manage Coupons',
                style: Styles.font35W700,
              ),
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
                      style: Styles.font24W500,
                    ),
                    const Spacer(),
                    const Icon(Icons.arrow_forward_ios_rounded)
                  ],
                ),
              ),
              12.vs,
              ExpansionTile(
                  tilePadding: EdgeInsets.zero,
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
                        style: Styles.font24W500,
                      ),
                    ],
                  ),
                  children: [
                    SizedBox(
                      height: context.screenHeight * 0.6,
                      child: ListView.builder(
                        itemCount: 10,
                        shrinkWrap: true,
                        // physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            const CuoponItemWidget(),
                      ),
                    )
                  ]
                  // List.generate(
                  //   6,
                  //   (index) => const CuoponItemWidget(),
                  // ),
                  // CuoponItemWidget()
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
