import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';

class CustomTileList extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const CustomTileList({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        leading:const SizedBox(
          width: 40,
          height: 20,
        ),
        title: Text(
          title,
          style: Styles.font24W500.copyWith(fontWeight: FontWeight.w700),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 17.spMax,
        ));
  }
}
