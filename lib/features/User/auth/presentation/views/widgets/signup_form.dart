import 'package:nile_brand/core/routing/exports.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final ValueNotifier<bool> viewPass = ValueNotifier<bool>(true);
  final ValueNotifier<bool> viewRestPass = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignUpCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            // height: 50.h,
            child: AppTextFormField(
              labelText: 'Name',
              hintText: 'user_name',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid name';
                }
              },
              controller: cubit.nameController,
            ),
          ),
          22.vs,
          SizedBox(
            // height: 50.h,
            child: AppTextFormField(
              labelText: 'E-mail',
              hintText: 'example@gmail.com',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid e-mail';
                }
              },
              controller: cubit.emailController,
            ),
          ),
          22.vs,
          PasswordField(
            viewPass: viewPass,
            labelText: "Password",
            hintText: "password",
            controller: cubit.passwordController,
          ),
          22.vs,
          PasswordField(
            viewPass: viewRestPass,
            labelText: 'Re-enter Password',
            hintText: 're-enter password',
            controller: cubit.confirmPasswordController,
          ),
          20.vs,
          Text(
            "Rule",
            style: Styles.font20W400.copyWith(
              color: ColorManager.mainText,
            ),
          ),
          const RuleSelector(),
        ],
      ),
    );
  }
}
