import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
<<<<<<< HEAD
import 'package:nile_brand/features/Owner/create_brand/data/models/create_brand_response_body.dart';
import 'package:nile_brand/features/Owner/my_brand/presentation/views/widgets/my_brand_view_features_widget.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/styles.dart';
=======
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/profile_image.dart';
import 'widgets/my_brand_view_features_widget.dart';
>>>>>>> 385f745cea92f02bf1c315857a1735a757b3f468

class MyBrand extends StatelessWidget {
  const MyBrand({super.key});

  Future<BrandData> _fetchBrandData() async {
    return await BrandStorage.getBrandData();
  }

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
        body: FutureBuilder<BrandData>(
          future: _fetchBrandData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('${snapshot.error}'));
            } else if (!snapshot.hasData) {
              return const Center(child: Text('No brand data found.'));
            }

            final brandData = snapshot.data!;

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50.r,
                      backgroundImage: NetworkImage(
                          "https://nile-brands-backend.up.railway.app/brands/${brandData.logo}"),
                    ),
                  ),
                 
                  Text(
                    brandData.name,
                    style: Styles.font20W400.copyWith(
                      fontSize: 22.sp,
                      color: ColorManager.subText,
                    ),
                  ),
                  Padding(
                    padding: 8.allEdgeInsets,
                    child: const Divider(
                      endIndent: 2,
                      thickness: 1,
                    ),
                  ),
                  const MyBrandViewFeaturesWidget(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
