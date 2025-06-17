import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/auth/data/repo/login_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../../Owner/owner_helpers.dart';
import '../../../data/models/login_request_body.dart';
import '../../../data/models/login_response.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginState() async {
    emit(LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    switch (response) {
      case Success<LoginResponse>():
        emit(LoginState.loginSuccess(response.data));

        
        if (response.data.token != null) {
          await BrandPrefs.setToken(response.data.token!);
        }

        getIt
            .get<SharedPreferences>()
            .setString('token', response.data.token ?? '');

        



        break;
      case Failure():
        emit(
          LoginState.loginError(
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
    passwordController.dispose();
    return super.close();
  }
}
