import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/get_my_profile_cubit/get_my_profile_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/widgets/infotile.dart';
import 'package:nile_brand/features/User/profile/presentation/widgets/profile_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cubits/get_my_profile_cubit/get_my_profile_state.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetMyProfileCubit>();
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
              BlocBuilder<GetMyProfileCubit, GetMyProfileState>(
                builder: (context, state) {
                  if (state is GetMyProfileSuccess) {
                    if (state.myProfile.userImage != null &&
                        isValidUri(state.myProfile.userImage!)) {
                      // return true;
                    }
                  }
                  final userName = state is GetMyProfileSuccess
                      ? state.myProfile.name ?? "Not Found"
                      : "User Name";
                  final image = state is GetMyProfileSuccess
                      ? state.myProfile.userImage ?? Assets.imagesProfileImage
                      : Assets.imagesProfileImage;
                  return Column(
                    children: [
                      ProfileImage(
                        imageUrl: image,
                        backgroundImage: state is GetMyProfileSuccess
                            ? NetworkImage(state.myProfile.userImage!)
                            : const AssetImage(Assets.imagesProfileImage),
                      ),
                      Text(
                        userName,
                        style: Styles.font20W600,
                      ),
                    ],
                  );
                },
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
                  ontap: () {
                    context.push(Routes.addFeedback);
                  },
                  leadingIcon: Assets.imagesFeedbackIcon,
                  title: "Feadback",
                  trailling: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 17.spMax,
                  )),
              20.vs,
              InfoTile(
                  ontap: () {
                    getIt.get<SharedPreferences>().remove('token');
                    context.pushReplacement(Routes.login);
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

  bool isValidUri(String uri) {
    try {
      final parsed = Uri.parse(uri);
      return parsed.isAbsolute && (parsed.hasScheme);
    } catch (e) {
      return false;
    }
  }
}
