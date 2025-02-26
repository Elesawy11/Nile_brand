// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/styles.dart';

// ignore: must_be_immutable
class InfoTile extends StatelessWidget {
  final String leadingIcon;
  final String title;
  final Widget trailling;
  VoidCallback? ontap;
  InfoTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.trailling,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: Image.asset(
        leadingIcon,
        width: 30.w,
        height: 25.h,
      ),
      title: Text(
        title,
        style: Styles.font20W600,
      ),
      trailing: trailling,
      titleAlignment: ListTileTitleAlignment.threeLine,
    );
  }
}
