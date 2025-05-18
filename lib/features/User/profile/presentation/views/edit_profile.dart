import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/profile_image.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/assets.dart';
import 'widgets/infoTile.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key, required this.name, required this.imageUrl});
  final String name;
  final String imageUrl;
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Edit Profile",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileImage(
                imageUrl: Assets.imagesProfileImage,
                backgroundImage: isValidUri(widget.imageUrl)
                    ? NetworkImage(widget.imageUrl)
                    : AssetImage(Assets.imagesProfileImage),
              ),
              26.vs,
              SizedBox(
                height: 50.h,
                width: 350.w,
                child: AppTextFormField(
                  hintText: widget.name,
                  labelText: widget.name,
                  validator: (p0) {},
                ),
              ),
              50.vs,
              // 25.vs,
              InfoTile(
                leadingIcon: Assets.imagesLock,
                title: "Edit Password",
                ontap: () {
                  context.push(Routes.editPassword);
                },
                trailling: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 17.spMax,
                ),
              ),
              20.vs,
              Padding(
                padding: 70.ph,
                child: AppTextButton(
                  backgroundColor: ColorManager.mainColor,
                  text: "Save Changes",
                  onPressed: () {
                    context.pop();
                  },
                ),
              )
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
