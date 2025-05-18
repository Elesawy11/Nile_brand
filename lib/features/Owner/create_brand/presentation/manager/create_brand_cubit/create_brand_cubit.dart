import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';
import '../../../data/repo/new_brand_repo.dart';
import 'create_brand_state.dart';

class CreateBrandCubit extends Cubit<CreateBrandState> {
  final CreateBrandRepoImpl _brandRepo;

  CreateBrandCubit(this._brandRepo) : super(CreateBrandInitial());

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final taxIdController = TextEditingController();

  File logoPng = File("");
  late String brandId = "";

  Future<void> createBrand() async {
    emit(CreateBrandLoading());

    final ownerId = await BrandPrefs.getOwnerId();

    final formData = FormData.fromMap({
      'name': nameController.text.trim(),
      'description': descriptionController.text.trim(),
      'taxID': taxIdController.text.trim(),
      'owner': ownerId,
      'logo': await MultipartFile.fromFile(logoPng.path,
          filename: logoPng.path.split('/').last,
          contentType: MediaType("image", "png")),
    });

    final result = await _brandRepo.createBrand(formData);
    switch (result) {
      case Success():
        print(result.data);
        await BrandStorage.saveBrandData(result.data);
        // brandId = result.data.id;
        await BrandPrefs.setbrandId(result.data.id);
        emit(CreateBrandSuccess(result.data));
        break;
      case Failure():
        emit(CreateBrandFailure(
          result.errorHandler.apiErrorModel.error?.message ??
              "Something Went Wrong",
        ));
    }
  }

  void setLogo(File file) {
    logoPng = file;

    emit(ChangeBrandImage());
  }

  void clearControllers() {
    nameController.clear();
    descriptionController.clear();
    taxIdController.clear();
  }

  @override
  Future<void> close() {
    nameController.dispose();
    descriptionController.dispose();
    taxIdController.dispose();
    return super.close();
  }
}
