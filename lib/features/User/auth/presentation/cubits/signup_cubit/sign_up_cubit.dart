import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/features/User/auth/data/models/signup_request_body.dart';
import 'package:nile_brand/features/User/auth/data/repo/signup_repo.dart';
import '../../../../../../core/networking/signup_features/signup_result.dart';
import '../../../data/models/signup_response.dart';
import 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ruleController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final SignUpRepo _signUpRepo;

  void emitSignUpState() async {
    emit(const SignUpState.signUpLoading());
    final response = await _signUpRepo.signup(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        role: ruleController.text,
      ),
    );

    switch (response) {
      case Success<SignupResponse>():
        emit(SignUpState.signUpSuccess(response.data));
        break;
      case Failure():
        emit(
          SignUpState.signUpError(
            error: response.errorHandler.apiErrorModel.errors?[0].msg ??
                "Unknown error",
          ),
        );
        break;
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    ruleController.dispose();

    return super.close();
  }
}
