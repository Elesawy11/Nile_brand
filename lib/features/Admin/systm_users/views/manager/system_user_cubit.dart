import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
import 'package:nile_brand/core/networking/api_result.dart';

import 'package:nile_brand/features/Admin/systm_users/data/repo/system_users_repo.dart';
import 'package:dio/dio.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';

import 'system_user_state.dart';

class SystemUsersCubit extends Cubit<SystemUsersState> {
  final SystemUsersRepo _repo;

  SystemUsersCubit(this._repo) : super(SystemUsersInitial());
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final roleController = TextEditingController();

  File? selectedImage;

  Future<void> getSystemUsers() async {
    final String? token = await BrandPrefs.getToken();
    emit(SystemUsersLoading());

    final result = await _repo.getSystemUsers("Bearer ${token!}");
    print(result);

    switch (result) {
      case Success():
        emit(SystemUsersLoadSuccess(result.data));

      case Failure():
        emit(SystemUsersFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  Future<void> createSystemUser() async {
    final String? token = await BrandPrefs.getToken();
    emit(SystemUsersLoading());
    final formData = FormData.fromMap({
      'name': nameController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text.trim(),
      'confirmPassword': confirmPasswordController.text.trim(),
      'role': roleController.text.trim(),
      'userImage': await MultipartFile.fromFile(selectedImage!.path,
          contentType: MediaType("image", "png"),
          filename: selectedImage!.path.split('/').last),
    });

    final result = await _repo.createSystemUsers(formData, "Bearer ${token!}");
    print(result);
    switch (result) {
      case Success():
        emit(SystemUserCreateSuccess(result.data));

      case Failure():
        emit(SystemUsersFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  void setImage(File file) {
    selectedImage = file;
    emit(ChangeUserImage());
  }

  Future<void> deleteSystemUser(
    String id,
  ) async {
    final String? token = await BrandPrefs.getToken();
    emit(SystemUsersLoading());

    final result = await _repo.deleteSystemUser(id, "Bearer ${token!}");
    print(result);
    switch (result) {
      case Success():
        emit(SystemUserDeleteSuccess(result.data));

      case Failure():
        emit(SystemUsersFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  Future<void> updateSystemUser(
    String id,
  ) async {
    final String? token = await BrandPrefs.getToken();
    emit(SystemUsersLoading());

    final result = await _repo.updateSystemUsers(
        id, nameController.text, "Bearer ${token!}");
    switch (result) {
      case Success():
        emit(SystemUserUpdateSuccess(result.data));

      case Failure():
        emit(SystemUsersFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }
}
