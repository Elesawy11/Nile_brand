import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nile_brand/features/User/wish_list/presentation/views/widgets/wish_list_item.dart';



class ListviewOfItemsOfWhishlist extends StatelessWidget {
  const ListviewOfItemsOfWhishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return const WishListItem();
        },
      ),
    );
  }
}
