import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/spacer.dart';

import 'categories_and_filter_widget.dart';
import 'notification_and_search_widget.dart';

class StackOfAdvertismentListViewWidget extends StatelessWidget {
  const StackOfAdvertismentListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 275.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: advImage.length,
            itemBuilder: (context, index) {
              return Image.asset(
                advImage[index],
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        Positioned(
          top: 42.h,
          child: Column(
            children: [
              const NotificationAndSearchWidget(),
              verticalSpace(28),
              const CategoriesAndFilterWidget(),
            ],
          ),
        ),
      ],
    );
  }
}

const List<String> advImage = [
  Assets.imagesAdv1,
  Assets.imagesAdv2,
];
