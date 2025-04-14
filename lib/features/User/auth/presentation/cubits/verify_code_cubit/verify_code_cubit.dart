import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/token.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/auth/data/repo/verify_code_repo.dart';
import 'package:nile_brand/features/User/auth/presentation/cubits/forgot_pass/forgot_pass_cubit.dart';
import 'verify_code_state.dart';

class VerifyCodeCubit extends Cubit<VerifyCodeState> {
  VerifyCodeCubit(this._verifyCodeRepo) : super(VerifyCodeState.initial());
  final VerifyCodeRepo _verifyCodeRepo;
  final List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  final formKey = GlobalKey<FormState>();
  String getCode() {
    String code = '';
    for (var controller in controllers) {
      code += controller.text;
    }
    return code;
  }

  void emitVerifyCodeState() async {
    emit(VerifyCodeState.verifyLoading());
    final response = await _verifyCodeRepo
        .verifyCode(body: {'resetCode': getCode()}, token: Token.token ?? '');

    switch (response) {
      case Success():
        emit(VerifyCodeState.verifySuccess(response.data));
        break;
      case Failure():
        emit(
          VerifyCodeState.verifyError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error",
          ),
        );
        break;
    }
  }
}
