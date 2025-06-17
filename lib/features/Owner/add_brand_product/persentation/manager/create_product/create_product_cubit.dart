import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http_parser/http_parser.dart';
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
    emit(CreateProductUpdated());
  }

  void setImages(List<File> images) {
    productImages = images;
    emit(CreateProductUpdated());
  }

  Future<void> submitProduct() async {
    

    emit(CreateProductLoading());

    selectedBrandId = await BrandPrefs.getbrandId();
    final formData = FormData.fromMap({
      "name": nameController.text.trim(),
      "description": descriptionController.text.trim(),
      "price": priceController.text.trim(),
      "quantity": quantityController.text.trim(),
     " category": selectedCategoryId!,
      "subcategory": selectedSubCategoryId!,
      "brand": selectedBrandId!,
      "sizes": selectedSizes,
     " colors": selectedColors,
      'coverImage': await MultipartFile.fromFile(coverImage!.path,
          filename: coverImage!.path.split('/').last,
          contentType: MediaType("image", "png")),

      "images":productImages.isNotEmpty? productImages.map((image)async{
         await MultipartFile.fromFile(image.path,
          filename: image.path.split('/').last,
          contentType: MediaType("image", "png"));

      }).toList() : productImages
    }
    );

    

    final result = await _repo.createProduct(
      brandId: selectedBrandId!,
      data: formData,
    );

    result.when(
      success: (message) => emit(CreateProductSuccess(message)),
      failure: (error) => emit(CreateProductError(error.message)),
    );
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
