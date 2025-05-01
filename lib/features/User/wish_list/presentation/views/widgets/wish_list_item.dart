import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/User/wish_list/presentation/views/widgets/price_button.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';


class WishListItem extends StatelessWidget {
  const WishListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(left:12.w,right: 12.w,bottom: 17.h),
      child: Container(
        width: MediaQuery.of(context).size.width*.9,
        height: 144.h,
        clipBehavior: Clip.hardEdge,
        // padding: EdgeInsets.only(right: 5.w),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,0),
              color: Colors.black.withValues(alpha: .4),
              blurRadius: 4.r
            )
          ]
      
        ),
        child: Row(
          children: [
            Image.asset(
              Assets.imagesTestItem,
              width: 127.w,
              height: 144.h,
              fit: BoxFit.cover,
            ),
            6.hs,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
                  // product name
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 187.w,
                        child: Text(
                          'Graceful Charm Dress',
                          overflow: TextOverflow.ellipsis,
                          style: Styles.font20W400,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.close,
                          color: const Color.fromARGB(255, 194, 30, 19),
                          size: 19.r,
                        ),
                      ),
                      7.hs
                    ],
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
      
                 Padding(
                   padding: EdgeInsets.only(bottom: 4.h,right: 2.w),
                   child: const PriceButton(),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
