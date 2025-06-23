import 'package:nile_brand/core/routing/exports.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../cubits/add_feedback_cubit/add_feedback_cubit.dart';
import '../../cubits/add_feedback_cubit/add_feedback_state.dart';

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
