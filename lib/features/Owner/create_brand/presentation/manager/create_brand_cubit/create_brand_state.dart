import 'package:equatable/equatable.dart';
import '../../../data/models/create_brand_response_body.dart';

abstract class CreateBrandState extends Equatable {
  const CreateBrandState();

  @override
  List<Object?> get props => [];
}

class CreateBrandInitial extends CreateBrandState {}

class CreateBrandLoading extends CreateBrandState {}

class CreateBrandSuccess extends CreateBrandState {
  final BrandData response;

  const CreateBrandSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class CreateBrandFailure extends CreateBrandState {
  final String errorMessage;

  const CreateBrandFailure(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}

class ChangeBrandImage extends CreateBrandState{}
