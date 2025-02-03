import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/profile/ui/widgets/infoTile.dart';
import 'package:nile_brand/features/profile/ui/widgets/profile_image.dart';

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
                padding: EdgeInsets.all(15.h),
                child: const Divider(
                  endIndent: 2,
                  thickness: 1,
                ),
              ),
              InfoTile(
                  leadingIcon: Assets.imagesProfileIcon,
                  title: "Edit Profile",
                  trailling: IconButton(
                      onPressed: () {
                        context.push(Routes.editProfile);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 17.spMax,
                      ))),
              verticalSpace(20),
              InfoTile(
                  leadingIcon: Assets.imagesPaymentMethods,
                  title: "Payment Methods",
                  trailling: IconButton(
                      onPressed: () {
                        context.push(Routes.editPaymentMethods);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 17.spMax,
                      ))),
              verticalSpace(20),
              InfoTile(
                  leadingIcon: Assets.imagesNotificationInfo,
                  title: "Notifications",
                  trailling: Switch(
                    value: false,
                    onChanged: (value) {},
                  )),
              verticalSpace(20),
              InfoTile(
                  leadingIcon: Assets.imagesDarkModeIcon,
                  title: "Dark Mode",
                  trailling: Switch(
                    value: false,
                    onChanged: (value) {},
                  )),
              verticalSpace(20),
              InfoTile(
                  leadingIcon: Assets.imagesFeadbackIcon,
                  title: "Feadback",
                  trailling: IconButton(
                      onPressed: () {
                        context.push(Routes.addFeedback);
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 17.spMax,
                      ))),
              verticalSpace(20),
              InfoTile(
                  ontap: () {
                    
                  },
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
