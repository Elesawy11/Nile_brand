import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';

class BrandOrdersStatusView extends StatelessWidget {
  const BrandOrdersStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Order Status',
              style: Styles.font35W700,
            ),
            ExpansionTile(
                title: Row(
              children: [
                Image.asset(
                  Assets.imagesOrderIcon,
                  height: 24.r,
                  width: 24.r,
                ),
                15.hs,
                Text(
                  'Status',
                  style: Styles.font24W500,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
