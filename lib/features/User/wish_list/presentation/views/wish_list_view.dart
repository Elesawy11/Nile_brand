import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/wish_list/presentation/views/widgets/listview_of_items.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/widgets/app_text_button.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Whishlist",
              style: Styles.font20W600,
            ),
          ),
          body: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 12.w),
                      child: SizedBox(
                        width: 100.w,
                        height: 38.h,
                        child: AppTextButton(
                          text: 'clear all',
                          onPressed: () {},
                          backgroundColor: ColorManager.mainColor,
                          borderRadius: 12.r,
                        ),
                      ),
                    ),
                  ),
                  const ListviewOfItemsOfWhishlist(),
                ],
              ),
            ),
          )),
    );
  }
}
