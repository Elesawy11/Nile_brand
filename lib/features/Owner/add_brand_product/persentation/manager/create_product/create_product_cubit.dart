import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';
import '../../../data/repo/create_product_repo.dart';

part 'create_product_state.dart';

class CreateProductCubit extends Cubit<CreateProductState> {
  final CreateProductRepo _repo;

  CreateProductCubit(this._repo) : super(CreateProductInitial());

  // Controllers
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final quantityController = TextEditingController();

  // Variables
  String? selectedCategoryId;
  String? selectedSubCategoryId;
  String? selectedBrandId;

  List<String> selectedSizes = [];
  List<String> selectedColors = [];
  List<File> productImages = [];
  File? coverImage;

  void setCategory(String id) {
    selectedCategoryId = id;
    emit(CreateProductUpdated());
  }

  void setSubCategory(String id) {
    selectedSubCategoryId = id;
    emit(CreateProductUpdated());
  }

  void setSizes(List<String> sizes) {
    selectedSizes = sizes;
    emit(CreateProductUpdated());
  }

  void setColors(List<String> colors) {
    selectedColors = colors;
    emit(CreateProductUpdated());
  }

  void setCoverImage(File image) {
    coverImage = image;
    emit(UpdateCoverImage());
  }

  void setImages(File image) {
    productImages.add(image);
    emit(UpdateAdditionalImage());
  }

  Future<void> submitProduct() async {
    String? token = await BrandPrefs.getToken();
    emit(CreateProductLoading());

    selectedBrandId = await BrandPrefs.getbrandId();

    // ✅ Convert cover image
    final cover = await MultipartFile.fromFile(
      coverImage!.path,
      filename: coverImage!.path.split('/').last,
      contentType: MediaType("image", "png"),
    );

    // ✅ Convert product images
    final imageFiles = await Future.wait(
      productImages.map((image) async {
        return await MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
          contentType: MediaType("image", "png"),
        );
      }),
    );

    final formData = FormData.fromMap({
      "name": nameController.text.trim(),
      "description": descriptionController.text.trim(),
      "price": priceController.text.trim(),
      "quantity": quantityController.text.trim(),
      "category": selectedCategoryId!,
      "subcategory": selectedSubCategoryId!,
      "brand": selectedBrandId ?? "685691c46b03f8f3085f1915",
      "sizes": selectedSizes,
      "colors": selectedColors,
      'coverImage': cover,
      "images": imageFiles,
    });

    final result = await _repo.createProduct(
      brandId: selectedBrandId ?? "685691c46b03f8f3085f1915",
      token: "Bearer $token",
      data: formData,
    );

    switch (result) {
      case Success():
        emit(CreateProductSuccess(result.data));
        close();
        break;
      case Failure():
        emit(CreateProductError(
          result.errorHandler.apiErrorModel.error?.message ?? "Unknown Error"));
        break;
    }
  }

  Future<void> updateProduct(String productId) async {
    String? token = await BrandPrefs.getToken();
    emit(UpdateProductLoadingState());

    selectedBrandId = await BrandPrefs.getbrandId();

    // ✅ Convert cover image
    final cover = await MultipartFile.fromFile(
      coverImage!.path,
      filename: coverImage!.path.split('/').last,
      contentType: MediaType("image", "png"),
    );

    // ✅ Convert product images (if updating)
    final imageFiles = await Future.wait(
      productImages.map((image) async {
        return await MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
          contentType: MediaType("image", "png"),
        );
      }),
    );

    final formData = FormData.fromMap({
      "name": nameController.text.trim(),
      "description": descriptionController.text.trim(),
      "price": priceController.text.trim(),
      "quantity": quantityController.text.trim(),
      "category": selectedCategoryId,
      "subcategory": selectedSubCategoryId,
      "brand": selectedBrandId ?? "685691c46b03f8f3085f1915",
      "sizes": selectedSizes,
      "colors": selectedColors,
      "images": imageFiles,
      'coverImage': cover,
    });

    final result = await _repo.updateProduct(
      brandId: selectedBrandId ?? "685691c46b03f8f3085f1915",
      productId: productId,
      token: "Bearer $token",
      data: formData,
    );

    switch (result) {
      case Success():
        emit(UpdateProductSuccessState());
        await close();
        break;
      case Failure():
        emit(UpdateProductFailureState());
        break;
    }
  }

  @override
  Future<void> close() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    quantityController.dispose();
    return super.close();
  }
}
