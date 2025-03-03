import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/wish_list/presentation/views/widgets/price_button.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';


class WishListItem extends StatelessWidget {
  const WishListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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

                 const PriceButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
