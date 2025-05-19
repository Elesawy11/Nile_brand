import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../data/models/new_product_model.dart';
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
  List<XFile> productImages = [];
  XFile? coverImage;

  void setCategory(String id) {
    selectedCategoryId = id;
    emit(CreateProductUpdated());
  }

  void setSubCategory(String id) {
    selectedSubCategoryId = id;
    emit(CreateProductUpdated());
  }

  void setBrand(String id) {
    selectedBrandId = id;
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

  void setCoverImage(XFile image) {
    coverImage = image;
    emit(CreateProductUpdated());
  }

  void setImages(List<XFile> images) {
    productImages = images;
    emit(CreateProductUpdated());
  }

  Future<void> submitProduct() async {
    if (selectedBrandId == null ||
        selectedCategoryId == null ||
        selectedSubCategoryId == null ||
        coverImage == null ||
        productImages.isEmpty) {
      emit(CreateProductError("Fields should be"));
      return;
    }

    emit(CreateProductLoading());

    final model = NewProductModel(
      name: nameController.text.trim(),
      description: descriptionController.text.trim(),
      price: priceController.text.trim(),
      quantity: quantityController.text.trim(),
      category: selectedCategoryId!,
      subcategory: selectedSubCategoryId!,
      brand: selectedBrandId!,
      sizes: selectedSizes,
      colors: selectedColors,
      images: productImages,
      coverImage: coverImage!,
    );

    final result = await _repo.createProduct(
      brandId: selectedBrandId!,
      model: model,
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
