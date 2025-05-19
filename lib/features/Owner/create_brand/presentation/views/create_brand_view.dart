import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/create_brand_body.dart';

class CreateBrandView extends StatelessWidget {
  const CreateBrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: const CreateBrandBody(),
        ),
      ),
    );
  }
}
