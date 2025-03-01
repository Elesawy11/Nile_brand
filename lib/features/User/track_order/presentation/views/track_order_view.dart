import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/features/User/track_order/presentation/views/constatns.dart';
import 'widgets/custom_time_line_tile_widget.dart';

class TrackOrderView extends StatelessWidget {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              Text(
                'Track order',
                style: Styles.font24W500,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return itemBuilder(context, index);
                  },
                ),
              ),
              SizedBox(
                height: 50.h,
                width: 120.w,
                child: AppTextButton(
                  text: 'Done',
                  onPressed: () {},
                  backgroundColor: ColorManager.mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget itemBuilder(BuildContext context, int index) {
  return index == 0
      ? CustomTimeLineTileWidget(
          image: Constatns.trackOrderList[index].image,
          title: Constatns.trackOrderList[index].title,
          description: Constatns.trackOrderList[index].description,
          index: index,
          isFirst: true,
          isLast: false,
        )
      : index == 2
          ? CustomTimeLineTileWidget(
              image: Constatns.trackOrderList[index].image,
              title: Constatns.trackOrderList[index].title,
              description: Constatns.trackOrderList[index].description,
              index: index,
              isFirst: false,
              isLast: true,
            )
          : CustomTimeLineTileWidget(
              image: Constatns.trackOrderList[index].image,
              title: Constatns.trackOrderList[index].title,
              description: Constatns.trackOrderList[index].description,
              index: index,
              isFirst: false,
              isLast: false,
            );
}
