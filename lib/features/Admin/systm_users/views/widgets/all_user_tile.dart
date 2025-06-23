import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../data/models/system_user_model.dart';
import 'cutome_system_user_info.dart';

class AllUserTile extends StatelessWidget {
  final List<UserModel> users;
  const AllUserTile({super.key, required this.users});

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
          Skeletonizer(
            enabled: false,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: users.length,
              itemBuilder: (context, index) {
                // print(users[index].);
                return  CustomeSystemUserInfo(user: users[index],);
              },
            ),
          )
        ]);
  }
}
