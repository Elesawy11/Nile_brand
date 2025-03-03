import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/profile/presentation/widgets/infotile.dart';
import 'package:nile_brand/features/User/profile/presentation/widgets/profile_image.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Profile",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const ProfileImage(
                imageUrl: Assets.imagesProfileImage,
              ),
              Text(
                "User Name",
                style: Styles.font20W600,
              ),
              Padding(
                padding: 15.allEdgeInsets,
                child: const Divider(
                  endIndent: 2,
                  thickness: 1,
                ),
              ),
              InfoTile(
                  leadingIcon: Assets.imagesProfileIcon,
                  title: "Edit Profile",
                  ontap: () {
                    context.push(Routes.editProfile);
                  },
                  trailling: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 17.spMax,
                  )),
              20.vs,
              InfoTile(
                  leadingIcon: Assets.imagesPaymentMethods,
                  title: "Payment Methods",
                  ontap: () {
                    context.push(Routes.editPaymentMethods);
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
                    context.push(Routes.addFeedback);
                  },
                  leadingIcon: Assets.imagesFeadbackIcon,
                  title: "Feadback",
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
          ),
        ),
      ),
    );
  }
}
