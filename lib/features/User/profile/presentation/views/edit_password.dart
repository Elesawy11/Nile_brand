import 'package:nile_brand/core/routing/exports.dart';
import '../cubits/update_password_cubit/update_password_cubit.dart';
import 'widgets/edit_pass_bloc_listener.dart';

class EditPassword extends StatefulWidget {
  const EditPassword({super.key});

  @override
  State<EditPassword> createState() => _EditPasswordState();
}

class _EditPasswordState extends State<EditPassword> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> viewCurrentPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> viewConfirmPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<UpdatePasswordCubit>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Edit Password",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Form(
              key: cubit.formKey,
              child: Column(
                children: [
                  32.vs,
                  PasswordField(
                    controller: cubit.currentPassController,
                    viewPass: viewCurrentPass,
                    labelText: 'current password',
                    hintText: 'current password',
                  ),
                  32.vs,
                  PasswordField(
                    controller: cubit.newPassController,
                    viewPass: viewPass,
                    labelText: 'new password',
                    hintText: 'new password',
                  ),
                  32.vs,
                  PasswordField(
                    controller: cubit.confirmPassController,
                    viewPass: viewConfirmPass,
                    labelText: 'confirm password',
                    hintText: 'confirm password',
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  Padding(
                    padding: 70.ph,
                    child: AppTextButton(
                      backgroundColor: ColorManager.mainColor,
                      text: "Save Changes",
                      onPressed: () => validateThenDoChange(context),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const UpdatePassBlocListener(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoChange(BuildContext context) {
    if (context.read<UpdatePasswordCubit>().formKey.currentState!.validate()) {
      context.read<UpdatePasswordCubit>().updatePassword();
    }
  }
}
