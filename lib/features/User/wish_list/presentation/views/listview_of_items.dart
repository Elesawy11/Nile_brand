import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';

import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';

class ListviewOfItemsOfWhishlist extends StatelessWidget {
  const ListviewOfItemsOfWhishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: const Key("value"),
            background: Container(
              width: 40.w,
              height: 150.h,
              color: const Color.fromARGB(255, 240, 106, 96),
              child: const Center(
                child: Icon(Icons.delete),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 12.w, bottom: 18.h),
              child: SizedBox(
                height: 170.h,
                width: 370.w,
                child: Row(
                  children: [
                    Card(
                      elevation: 8.w,
                      child: Image.asset(
                        Assets.imagesTestItem,
                        height: 170.h,
                        width: 130.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // product name
                          Text(
                            overflow: TextOverflow.ellipsis,
                            "Graceful Charm Dress",
                            style: Styles.font20W600,
                          ),
                          // product id
                          Text(
                            "clothes",
                            style: Styles.font17W400.copyWith(
                              color: ColorManager.subText,
                            ),
                          ),

                          // product subcategory

                          Expanded(
                            child: SizedBox(
                              // width: 210.w,
                              height: 80.h,
                              child: Text(
                                "Elegant black dress featuring a sleek silhouette, designed with premium ",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.font16W400,
                                softWrap: true,
                                maxLines: 4,
                              ),
                            ),
                          ),

                          Row(
                            children: [
                              // price
                              Text(
                                "700 le",
                                style: Styles.font20W600,
                              ),
                              horizontalSpace(47.w),
                              SizedBox(
                                width: 110.w,
                                height: 40.h,
                                child: AppTextButton(
                                  borderRadius: 12.r,
                                  text: "Add to Cart",
                                  backgroundColor: ColorManager.mainColor,
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
