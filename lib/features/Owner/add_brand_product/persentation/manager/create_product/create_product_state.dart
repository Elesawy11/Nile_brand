part of 'create_product_cubit.dart';

abstract class CreateProductState {}

class CreateProductInitial extends CreateProductState {}

class CreateProductUpdated extends CreateProductState {}

class CreateProductLoading extends CreateProductState {}

class CreateProductSuccess extends CreateProductState {
  final String message;
  CreateProductSuccess(this.message);
}

class CreateProductError extends CreateProductState {
  final String message;
  CreateProductError(this.message);
}


class UpdateCoverImage extends CreateProductState {}

class UpdateAdditionalImage extends CreateProductState {}

class UpdateProductLoadingState extends CreateProductState {}

class UpdateProductSuccessState extends CreateProductState {}

class UpdateProductFailureState extends CreateProductState {}

