import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/profile_image.dart';
import 'widgets/my_brand_view_features_widget.dart';

class MyBrand extends StatelessWidget {
  const MyBrand({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "My Brand",
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
                "Handmade Creations",
                style: Styles.font20W400.copyWith(
                  color: ColorManager.subText,
                ),
              ),
              Padding(
                padding: 15.allEdgeInsets,
                child: const Divider(
                  endIndent: 2,
                  thickness: 1,
                ),
              ),
              const MyBrandViewFeaturesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
