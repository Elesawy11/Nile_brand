import 'package:equatable/equatable.dart';
import '../../../data/models/all_products_response_body.dart';


abstract class BrandProductsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BrandProductsInitial extends BrandProductsState {}

class BrandProductsLoading extends BrandProductsState {}

class BrandProductsSuccess extends BrandProductsState {
  final List<BrandProductModel> products;

  BrandProductsSuccess(this.products);

  @override
  List<Object?> get props => [products];

}

class DeleteBrandProduct extends BrandProductsState{
  
}

class BrandProductsFailure extends BrandProductsState {
  final String error;

  BrandProductsFailure(this.error);

  @override
  List<Object?> get props => [error];
}
