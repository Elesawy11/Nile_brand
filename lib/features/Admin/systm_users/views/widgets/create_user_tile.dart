import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class CreateUserTile extends StatelessWidget {
  const CreateUserTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.push(Routes.createSytemUser);
      },
      title: Text(
        "Create System User",
        style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 17.spMax,
      ),
      leading: SizedBox(
        height: 25.h,
        width: 25.w,
        child: Image.asset(Assets.imagesUnactiveSystmeUsersAdmin),
      ),
    );
  }
}
