import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/api/system_feedback_services.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/repo/system_feedback_repo.dart';
import 'package:nile_brand/features/Admin/system_feedback/views/manager/feeds_cubit.dart';
import 'package:nile_brand/features/Admin/system_feedback/views/manager/feeds_state.dart';
import 'package:nile_brand/features/Admin/system_feedback/views/widgets/system_feedback_list.dart';



class SystemFeedbackView extends StatelessWidget {
  const SystemFeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SystemFeedbackCubit(
        SystemFeedbackRepo(
          feedbackSource: SystemFeedbackSource(DioFactory.dio!),
        ),
      )..fetchSystemFeedbacks(),

      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Show System Feedback",
              style: Styles.font30W700.copyWith(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: 12.allEdgeInsets,
            child: BlocConsumer<SystemFeedbackCubit, SystemFeedbackState>(
              listener: (context, state) {
                if (state is SystemFeedbackFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: ${state.error}'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              builder: (context, state) {
                if (state is SystemFeedbackLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is SystemFeedbackSuccess) {
                  if (state.feedbacks.isEmpty) {
                    return const Center(child: Text('No Feedback Available'));
                  }
                  return SystemFeedbackList(feeds: state.feedbacks);
                } else if (state is SystemFeedbackFailure) {
                  return const Center(child: Text('Failed to fetch feedbacks'));
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
