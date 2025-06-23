import 'package:equatable/equatable.dart';
import 'package:nile_brand/features/Admin/manage_brands/data/models/brand_model.dart';

abstract class SystemBrandsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SystemBrandsInitial extends SystemBrandsState {}

class SystemBrandsLoading extends SystemBrandsState {}

class SystemBrandsLoaded extends SystemBrandsState {
  final List<SystemBrand> brands;

  SystemBrandsLoaded(this.brands);

  @override
  List<Object?> get props => [brands];
}

class SystemBrandsError extends SystemBrandsState {
  final String message;

  SystemBrandsError(this.message);

  @override
  List<Object?> get props => [message];
}

class BrandDeleteSuccess extends SystemBrandsState {
  final String message;

  BrandDeleteSuccess(this.message);

  @override
  List<Object?> get props => [message];
}
