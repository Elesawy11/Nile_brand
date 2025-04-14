import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/token.dart';
import 'package:nile_brand/features/User/auth/data/repo/forgot_pass_repo.dart';
import '../../../../../../core/networking/signup_features/signup_result.dart';
import '../../../data/models/forgot_pass_response.dart';
import '../../../data/models/frogot_pass_request.dart';
import 'forgot_pass_state.dart';

class ForgotPassCubit extends Cubit<ForgotPassState> {
  ForgotPassCubit(this._forgotPassRepo) : super(ForgotPassState.initial());

  final ForgotPassRepo _forgotPassRepo;
  final TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitforgotPassState() async {
    emit(const ForgotPassState.forgotLoading());
    final response = await _forgotPassRepo.forgotPassword(
      FrogotPassRequest(
        email: emailController.text,
      ),
    );

    switch (response) {
      case Success<ForgotPassResponse>():
        emit(ForgotPassState.forgotSuccess(response.data));
        Token.token = response.data.resetToken ?? '';

        break;
      case Failure():
        emit(
          ForgotPassState.forgotError(
            error: response.errorHandler.apiErrorModel.errors?[0].msg ??
                "Unknown error",
          ),
        );
        break;
    }
  }
}
