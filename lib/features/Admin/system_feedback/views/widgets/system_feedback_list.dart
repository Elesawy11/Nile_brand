import 'package:flutter/material.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/model/system_feedback_model.dart';
import 'package:nile_brand/features/Admin/system_feedback/views/widgets/custom_system_feedback.dart';

class SystemFeedbackList extends StatelessWidget {
  final List<SystemFeedbackModel> feeds;
  const SystemFeedbackList({super.key, required this.feeds});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feeds.length,
      itemBuilder: (context, index) {
        return  CustomSystemFeedback(feed: feeds[index],);
      },
    );
  }
}
