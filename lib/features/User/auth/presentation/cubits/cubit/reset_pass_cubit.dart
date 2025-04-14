import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/token.dart';
import 'package:nile_brand/features/User/auth/data/models/forgot_pass_response.dart';
import 'package:nile_brand/features/User/auth/data/models/reset_pass_request.dart';
import 'package:nile_brand/features/User/auth/data/repo/reset_pass_repo.dart';
import '../../../../../../core/networking/api_result.dart';
import 'reset_pass_state.dart';

class ResetPassCubit extends Cubit<ResetPassState> {
  final ResetPassRepo _resetPassRepo;
  ResetPassCubit(this._resetPassRepo) : super(ResetPassState.initial());
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitResetPassState() async {
    emit(const ResetPassState.resetLoading());
    final response = await _resetPassRepo.resetPassword(
      resetPassRequest: ResetPassRequest(
          password: newPasswordController.text,
          confirmPassword: confirmPasswordController.text),
      token: Token.token ?? '',
    );

    switch (response) {
      case Success<ForgotPassResponse>():
        emit(ResetPassState.resetSuccess(response.data));
        break;
      case Failure():
        emit(
          ResetPassState.resetError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error",
          ),
        );
        break;
    }
  }
}
