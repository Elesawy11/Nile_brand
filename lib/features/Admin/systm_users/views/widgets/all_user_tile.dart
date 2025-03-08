import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'cutome_system_user_info.dart';

class AllUserTile extends StatelessWidget {
  const AllUserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        
        showTrailingIcon: true,
      
        collapsedShape: Border.all(color: Colors.white),
        shape: ShapeBorder.lerp(Border.all(color: Colors.white),
            Border.all(color: Colors.white), 0.5),
        leading: SizedBox(
          height: 24.h,
          width: 24.w,
          child: Image.asset(Assets.imagesViewUsers),
        ),
        
        title: Text(
          "View All Users",
          style: Styles.font24W500.copyWith(fontWeight: FontWeight.w700),
        ),
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 7,
            itemBuilder: (context, index) {
              return const CustomeSystemUserInfo();
            },
          )
        ]);
  }
}
