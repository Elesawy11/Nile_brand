import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/profile/data/repo_impl/my_profile_repo_impl.dart';
import 'update_password_state.dart';

class UpdatePasswordCubit extends Cubit<UpdatePasswordState> {
  UpdatePasswordCubit(this._repo) : super(const UpdatePasswordState.initial());
  final MyProfileRepoImpl _repo;
  final formKey = GlobalKey<FormState>();
  final TextEditingController currentPassController = TextEditingController();
  final TextEditingController newPassController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();
  Future<void> updatePassword() async {
    emit(const UpdatePasswordState.updatePasswordLoading());
    final response = await _repo.updatePassword(
      currentPassController.text.trim(),
      newPassController.text.trim(),
      confirmPassController.text.trim(),
    );

    switch (response) {
      case Success():
        emit(
            UpdatePasswordState.updatePasswordSuccess(response: response.data));
        break;
      case Failure():
        emit(
          UpdatePasswordState.updatePasswordError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error",
          ),
        );
        break;
    }
  }
}
