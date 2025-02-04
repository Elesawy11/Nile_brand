import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/utils/styles.dart';

class ChatbotTopBarWidget extends StatelessWidget {
  const ChatbotTopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 13.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorManager.grayEC,
            width: 1.r,
          ),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            ),
          ),
          horizontalSpace(10),
          Image.asset(
            Assets.imagesChatbotLogo,
            height: 36.h,
            width: 24.w,
          ),
          horizontalSpace(8),
          Column(
            children: [
              Text(
                'Chatbot',
                style: Styles.font20W700.copyWith(
                  color: ColorManager.blue33,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    size: 10.r,
                    color: ColorManager.green3A,
                  ),
                  horizontalSpace(4),
                  Text(
                    'Online',
                    style: Styles.font17W500.copyWith(
                      color: ColorManager.green3A,
                    ),
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.svgImagesVolumeIcon,
              width: 24.r,
              height: 24.r,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.svgImagesExport,
              width: 24.r,
              height: 24.r,
            ),
          ),
          horizontalSpace(30)
        ],
      ),
    );
  }
}
