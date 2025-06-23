import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Admin/manage_categories/data/repo/manage_catg_repo.dart';
import 'package:nile_brand/features/Admin/manage_categories/views/manager/manage_catg_state.dart';
import 'package:dio/dio.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';

class ManageCatgCubit extends Cubit<ManageCatgState> {
  final ManageCatgRepo _repo;

  ManageCatgCubit(this._repo) : super(ManageCatgInitial());
  final nameController = TextEditingController();
  final categoryController = TextEditingController();

  File? catgImage;

  Future<void> createCategory() async {
    final String? token = await BrandPrefs.getToken();
    emit(ManageCatgLoading());
    final formData = FormData.fromMap({
      'name': nameController.text.trim(),
      'categoryImage': await MultipartFile.fromFile(catgImage!.path,
          contentType: MediaType("image", "png"),
          filename: catgImage!.path.split('/').last),
    });

    final result = await _repo.createCategory(formData, "Bearer ${token!}");
    print(result);
    switch (result) {
      case Success():
        emit(CategoryCreateSuccess(result.data));

      case Failure():
        emit(ManageCatgFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  void setImage(File file) {
    catgImage = file;
    emit(ChangeCtgImage());
  }

  Future<void> deleteCategory(
    String id,
  ) async {
    final String? token = await BrandPrefs.getToken();
    emit(ManageCatgLoading());

    final result = await _repo.deleteCategory(id, "Bearer ${token!}");
    print(result);
    switch (result) {
      case Success():
        emit(CategoryDeleteSuccess(result.data));

      case Failure():
        emit(ManageCatgFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  Future<void> updateCategory(
    String id,
  ) async {
    final formData = FormData.fromMap({
      'name': nameController.text.trim(),
      'userImage': await MultipartFile.fromFile(catgImage!.path,
          contentType: MediaType("image", "png"),
          filename: catgImage!.path.split('/').last),
    });
    final String? token = await BrandPrefs.getToken();
    emit(ManageCatgLoading());

    final result = await _repo.updateCategory(formData, id, "Bearer ${token!}");
    switch (result) {
      case Success():
        emit(CategoryUpdateSuccess(result.data));

      case Failure():
        emit(ManageCatgFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  Future<void> createSubCategory(String category) async {
    final String? token = await BrandPrefs.getToken();

    final result = await _repo.createSubCategory(
        nameController.text, category, "Bearer ${token!}");
    print(result);
    switch (result) {
      case Success():
        emit(SubCategoryCreateSuccess(result.data));

      case Failure():
        emit(ManageCatgFailure(
            result.errorHandler.apiErrorModel.error!.message ?? "try again"));
    }
  }

  Future<void> deleteSubCategory(
    String id,
  ) async {
    final String? token = await BrandPrefs.getToken();
    emit(ManageCatgLoading());

    final result = await _repo.deleteSubCategory(id, "Bearer ${token!}");
    print(result);
    switch (result) {
      case Success():
        emit(SubCategoryDeleteSuccess(result.data));

      case Failure():
        emit(ManageCatgFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  Future<void> updateSubCatory(
    String id,
  ) async {
    final String? token = await BrandPrefs.getToken();
    emit(ManageCatgLoading());

    final result = await _repo.updateSubCategory(
        nameController.text, id, "Bearer ${token!}");
    switch (result) {
      case Success():
        emit(SubCategoryUpdateSuccess(result.data));

      case Failure():
        emit(ManageCatgFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  String? selectedCategoryId;

  void selectCategory(String id) {
    selectedCategoryId = id;
    categoryController.text = id;
    emit(ManageCatgCategorySelected(id));
  }
}
