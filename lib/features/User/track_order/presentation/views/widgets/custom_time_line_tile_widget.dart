import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:timelines_plus/timelines_plus.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';

class CustomTimeLineTileWidget extends StatelessWidget {
  const CustomTimeLineTileWidget({
    super.key,
    required this.isLast,
    required this.isFirst,
    required this.index,
    required this.image,
    required this.title,
    required this.description,
  });
  final bool isLast;
  final bool isFirst;
  final int index;
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      nodeAlign: TimelineNodeAlign.start,
      contents: Row(
        children: [
          Image.asset(
            image,
            width: 158.r,
            height: 158.r,
          ),
          Expanded(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '$title\n',
                    style: Styles.font16W700.copyWith(
                      color: Colors.black,
                    ),
                  ),
                  WidgetSpan(
                    child: Text(
                      description,
                      style: Styles.font16W400.copyWith(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      node: TimelineNode(
        indicator: DotIndicator(
          color: ColorManager.grayD9,
          border: Border.all(color: ColorManager.mainColor, width: 2),
          size: 35.r,
          child: Center(
            child: Text(
              '${index + 1}',
              style: Styles.font30W700.copyWith(
                color: ColorManager.mainColor,
              ),
            ),
          ),
        ),
        startConnector: SizedBox(
          height: 78.h,
          child: isFirst
              ? null
              : const DashedLineConnector(
                  indent: 5,
                  endIndent: 5,
                  dash: 10,
                  thickness: 5,
                  gap: 4,
                  color: ColorManager.mainColor,
                ),
        ),
        endConnector: isLast
            ? null
            : const DashedLineConnector(
                indent: 5,
                endIndent: 5,
                dash: 10,
                thickness: 5,
                gap: 4,
                color: ColorManager.mainColor,
              ),
      ),
    );
  }
}
