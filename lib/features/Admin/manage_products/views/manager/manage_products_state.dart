import 'package:equatable/equatable.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';

abstract class SystemProductsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SystemProductsInitial extends SystemProductsState {}

class SystemProductsLoading extends SystemProductsState {}

class SystemProductsLoaded extends SystemProductsState {
  final List<ProductModel> products;

  SystemProductsLoaded(this.products);

  @override
  List<Object?> get props => [products];
}

class SystemProductsError extends SystemProductsState {
  final String message;

  SystemProductsError(this.message);

  @override
  List<Object?> get props => [message];
}

class ProductDeleteSuccess extends SystemProductsState {
  final String message;

  ProductDeleteSuccess(this.message);

  @override
  List<Object?> get props => [message];
}
