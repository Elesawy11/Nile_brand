import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/assets.dart';

import '../../../../../User/profile/presentation/views/widgets/info_tile.dart';

// import '../../../../../User/profile/presentation/widgets/infotile.dart';

// import '../../../../../User/profile/presentation/widgets/infotile.dart';

import '../../../../create_brand/data/models/create_brand_response_body.dart';
import '../../../../owner_helpers.dart';
import '../../manager/update_brand/update_brand_cubit.dart';
import '../../manager/update_brand/update_brand_state.dart';

class MyBrandViewFeaturesWidget extends StatefulWidget {
  const MyBrandViewFeaturesWidget({super.key});

  @override
  State<MyBrandViewFeaturesWidget> createState() =>
      _MyBrandViewFeaturesWidgetState();
}

class _MyBrandViewFeaturesWidgetState extends State<MyBrandViewFeaturesWidget> {
  Future<void> getdata() async {
    await BrandStorage.getBrandData();
  }

  BrandData? brandData;

  @override
  void initState() {
    getdata();
    brandData = BrandStorage.brandData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateBrandCubit, UpdateBrandState>(
      listener: (context, state) {
        if (state is UpdateBrandDeleted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Brand deleted successfully"),
              backgroundColor: Colors.green,
            ),
          );
          context.go(Routes.start);
        } else if (state is UpdateBrandFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Column(
        children: [

          InfoTile(
            ontap: () {
              context.push(Routes.updateBrand);
            },
            leadingIcon: Assets.imagesUpdateBrandIcon,
            title: "Update Brand",
            trailling: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17.spMax,
            ),
          ),
          20.vs,
          InfoTile(
            ontap: () async {
              final shouldDelete = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: Text("Delete Brand"),
                  content: Text("Are you sure you want to delete this brand?"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(ctx, false),
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(ctx, true),
                      child:
                          Text("Delete", style: TextStyle(color: Colors.red)),
                    ),
                  ],
                ),
              );

              if (shouldDelete == true) {
                context.read<UpdateBrandCubit>().deleteBrand();
              }
            },
            leadingIcon: Assets.imagesDeleteBrandIcon,
            title: "Delete Brand",
            trailling: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 17.spMax,
            ),
          ),
          20.vs,
          InfoTile(
            ontap: () async {
              await BrandPrefs.clearToken();
              context.go(Routes.start);
            },
            leadingIcon: Assets.imagesLogOutIcon,
            title: "Log Out",
            trailling: SizedBox(width: 12.w),
          ),
        ],
      ),
    );
  }
}
