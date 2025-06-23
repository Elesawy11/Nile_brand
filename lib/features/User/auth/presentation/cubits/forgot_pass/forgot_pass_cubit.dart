import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/token.dart';
import 'package:nile_brand/features/User/auth/data/repo/forgot_pass_repo.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../data/models/forgot_pass_response.dart';
import '../../../data/models/frogot_pass_request.dart';
import 'forgot_pass_state.dart';

class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit(this._forgotPassRepo)
      : super(const ForgotPassState.initial());

  final ForgotPassRepo _forgotPassRepo;
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String email = '';

  /// This method is used to get the email from the text field to verfication cubit

  void setEmail() {
    email = emailController.text;
  }

  void emitforgotPassState() async {
    emit(const ForgotPassState.forgotLoading());
    final response = await _forgotPassRepo.forgotPassword(
      FrogotPassRequest(
        email: emailController.text,
      ),
    );

    switch (response) {
      case Success<ForgotPassResponse>():
        emit(
            ForgotPassState.forgotSuccess(response.data, emailController.text));
        Token.token = response.data.resetToken ?? '';

        break;
      case Failure():
        emit(
          ForgotPassState.forgotError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error",
          ),
        );
        break;
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    return super.close();
  }
}
