import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';
import 'increase_and_decrease_icon_widget.dart';

class MyCartItemWidget extends StatelessWidget {
  const MyCartItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 144.h,
      child: Row(
        children: [
          Image.asset(
            Assets.imagesTestCartImage,
            width: 127.w,
            height: 144.h,
            fit: BoxFit.cover,
          ),
          horizontalSpace(6),
          SizedBox(
            width: MediaQuery.of(context).size.width - (127.w + 12 * 2.w + 6.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 187.w,
                      child: Text(
                        'Graceful Charm Dress',
                        overflow: TextOverflow.ellipsis,
                        style: Styles.font20W400,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.close,
                        color: ColorManager.gray8C,
                        size: 16.r,
                      ),
                    ),
                  ],
                ),
                verticalSpace(7),
                Text(
                  'clothes',
                  style: Styles.font16W400.copyWith(color: ColorManager.gray8C),
                ),
                Expanded(
                  child: Text(
                    'Elegant black dress featuring a sleek silhouette, designed with premium',
                    style: Styles.font16W400,
                  ),
                ),
                // const Spacer(),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '120.00 LE',
                        style: Styles.font20W400,
                      ),
                      Row(
                        children: [
                          IncreaseAndDecreaseIconWidget(
                            onTap: () {},
                            icon: Icons.add,
                          ),
                          horizontalSpace(5),
                          Text(
                            '1',
                            style: Styles.font14W400,
                          ),
                          horizontalSpace(5),
                          IncreaseAndDecreaseIconWidget(
                            onTap: () {},
                            icon: Icons.remove,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
