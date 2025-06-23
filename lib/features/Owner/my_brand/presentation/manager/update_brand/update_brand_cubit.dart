import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
import 'package:nile_brand/core/networking/api_error_handler.dart';


import 'package:nile_brand/features/Owner/my_brand/data/repo/update_brand_repo.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';

import '../../../../../../core/networking/api_result.dart';

import '../../../data/models/update_brand_response_body.dart';
import '../../../../create_brand/data/models/create_brand_response_body.dart';
import 'update_brand_state.dart';

class UpdateBrandCubit extends Cubit<UpdateBrandState> {
  final UpdateBrandRepoImpl repo;

  UpdateBrandCubit(this.repo) : super(UpdateBrandInitial()) {
    fillControllers(); // will be triggered automatically
  }

  late TextEditingController nameController = TextEditingController();
  late TextEditingController descriptionController = TextEditingController();
  late TextEditingController taxIdController = TextEditingController();
  File? selectedLogo;
  String? logoPath;

  void setImage(File file) {
    selectedLogo = file;
  }

  Future<void> fillControllers() async {
    final BrandData data = await BrandStorage.getBrandData() ;
    nameController = TextEditingController(text: data.name);
    descriptionController = TextEditingController(text: data.description);
    taxIdController = TextEditingController(text: data.taxID);
    logoPath = data.logo;
    emit(LoadedOldInfo());
  }

  Future<void>? updateBrand() async {
    emit(UpdateBrandLoading());

    final ownerId = await BrandPrefs.getOwnerId();

    final formData = FormData.fromMap({
      'name': nameController.text.trim(),
      'description': descriptionController.text.trim(),
      'taxID': taxIdController.text.trim(),
      'owner': ownerId,
      'logo': await MultipartFile.fromFile(selectedLogo!.path,
          filename: selectedLogo!.path.split('/').last,
          contentType: MediaType("image", "png")),
    });

    String? brandId = await BrandPrefs.getbrandId();
    final result = await repo.updateBrand(brandId ?? "685691c46b03f8f3085f1915", formData);
    print(result);

    if (result is Success) {
      final data = (result as Success<UpdatedBrandData>).data;
      print("✅ Brand updated: ${data.name}");
      await BrandStorage.clearBrandData();
      await BrandStorage.saveBrandData(BrandData(
        id: data.id, name: data.name, logo: data.logo, 
        description: data.description,
         taxID: data.taxID, owner: 
         data.owner.Id, createdAt: data.createdAt, updatedAt: data.updatedAt));
      emit(UpdateBrandSuccess(DateTime.now().toString()));
    } else if (result is Failure) {
      final error = (result as Failure<ErrorHandler>).errorHandler;
      
      emit(UpdateBrandFailure(error.apiErrorModel.error!.message?? "Error"));
    }
  }

  Future<void> deleteBrand() async {
    String? brandId = await BrandPrefs.getbrandId();
    // if (brandId == null) {
    //   emit(UpdateBrandFailure("Brand ID is missing"));
    //   return;
    // } 

    emit(UpdateBrandLoading());

    final result = await repo.deleteBrand(brandId ?? "685691c46b03f8f3085f1915");

    emit(UpdateBrandDeleted(msg: "brand deleted successfully"));

    result.when(
      success: (msg) => emit(UpdateBrandDeleted(msg: msg)),
      failure: (error) => emit(UpdateBrandFailure(
          error.apiErrorModel.message ?? "Error deleting brand")),
    );
  }

  @override
  Future<void> close() {
    nameController.dispose();
    descriptionController.dispose();
    taxIdController.dispose();
    return super.close();
  }
}
