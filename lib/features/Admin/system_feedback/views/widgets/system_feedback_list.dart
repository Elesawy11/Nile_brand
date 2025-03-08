import 'package:flutter/material.dart';
import 'package:nile_brand/features/Admin/system_feedback/views/widgets/custom_system_feedback.dart';

class SystemFeedbackList extends StatelessWidget {
  const SystemFeedbackList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomSystemFeedback();
      },
    );
  }
}
