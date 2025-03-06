import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../User/profile/presentation/widgets/infotile.dart';

class MyBrandViewFeaturesWidget extends StatelessWidget {
  const MyBrandViewFeaturesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoTile(
            leadingIcon: Assets.imagesProfileIcon,
            title: "Profile",
            ontap: () {
              context.push(Routes.brandProfile);
            },
            trailling: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17.spMax,
            )),
        20.vs,
        InfoTile(
            leadingIcon: Assets.imagesNotificationInfo,
            title: "Notifications",
            trailling: Switch(
              value: false,
              onChanged: (value) {},
            )),
        20.vs,
        InfoTile(
            leadingIcon: Assets.imagesDarkModeIcon,
            title: "Dark Mode",
            trailling: Switch(
              value: false,
              onChanged: (value) {},
            )),
        20.vs,
        InfoTile(
            ontap: () {
              //TODO: Update brand method
              // context.push(Routes.updateBrand);
              context.push(Routes.addBrandProduct);
            },
            leadingIcon: Assets.imagesUpdateBrandIcon,
            title: "Update Brand",
            trailling: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17.spMax,
            )),
        20.vs,
        InfoTile(
            ontap: () {
              //TODO: Delete brand method
            },
            leadingIcon: Assets.imagesDeleteBrandIcon,
            title: "Delete Brand",
            trailling: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17.spMax,
            )),
        20.vs,
        InfoTile(
            ontap: () {},
            leadingIcon: Assets.imagesLogOutIcon,
            title: "Log Out",
            trailling: SizedBox(
              width: 12.w,
            )),
      ],
    );
  }
}
