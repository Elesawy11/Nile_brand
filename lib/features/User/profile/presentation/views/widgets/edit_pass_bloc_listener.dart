import 'package:nile_brand/core/routing/exports.dart';
import '../../../../../../core/helpers/show_succes_dialog.dart';
import '../../cubits/update_password_cubit/update_password_cubit.dart';
import '../../cubits/update_password_cubit/update_password_state.dart';

class UpdatePassBlocListener extends StatelessWidget {
  const UpdatePassBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdatePasswordCubit, UpdatePasswordState>(
      listenWhen: (previous, current) =>
          current is UpdatePasswordError ||
          current is UpdatePasswordLoading ||
          current is UpdatePasswordSuccess,
      listener: (context, state) {
        switch (state) {
          case UpdatePasswordLoading():
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.mainColor,
                ),
              ),
            );

            break;
          case UpdatePasswordSuccess():
            context.pop();
            showSuccessDialog(
                title: 'Update Successful',
                message: 'update successfully!',
                context, onPressed: () {
              context.go(Routes.editProfile);
            });
            break;
          case UpdatePasswordError():
            setupErrorState(context, state.error);
            break;
        }
      },
      child: const SizedBox.shrink(),
    );
  }
}
