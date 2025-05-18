import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/add_feedback_cubit/add_feedback_cubit.dart';
import 'package:nile_brand/features/User/profile/presentation/cubits/add_feedback_cubit/add_feedback_state.dart';
import '../../../../../../core/helpers/setup_error_state.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../../../../../core/routing/routes.dart';

class FeedbackBlocListener extends StatelessWidget {
  const FeedbackBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddFeedbackCubit, AddFeedbackState>(
      listenWhen: (previous, current) =>
          current is AddFeedbackLoading ||
          current is AddFeedbackError ||
          current is AddFeedbackSuccess,
      listener: (context, state) {
        switch (state) {
          case AddFeedbackLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case AddFeedbackSuccess():
            context.pop();
            showSuccessDialog(
                title: 'Feedback Added',
                message: 'feedback added successfully!',
                context, onPressed: () {
              context.pop();
              context.pop();
            });
            break;
          case AddFeedbackError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
