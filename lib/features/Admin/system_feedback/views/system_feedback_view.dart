import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';

import 'package:nile_brand/features/Admin/system_feedback/views/widgets/system_feedback_list.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../core/utils/styles.dart';

class SystemFeedbackView extends StatelessWidget {
  const SystemFeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Show System Feedback" , style: Styles.font30W700.copyWith(fontSize: 25.sp,fontWeight: FontWeight.bold),),
        ),

        body: Padding(
          padding: 12.allEdgeInsets,
          child:  Center(

            child:Skeletonizer(enabled: false,child: SystemFeedbackList()),
          ),
          ),
      ),
    );
  }
}