
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/core/networking/token.dart';
import 'package:nile_brand/features/User/auth/data/repo/verify_code_repo.dart';
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

  @override
  Future<void> close() {
    for (var controller in controllers) {
      controller.dispose();
    }
    return super.close();
  }
}
