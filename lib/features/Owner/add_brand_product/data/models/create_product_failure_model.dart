import 'package:json_annotation/json_annotation.dart';

part 'create_product_failure_model.g.dart';

@JsonSerializable()
class CreateProductFailureModel {
  final List<FieldError> errors;

  CreateProductFailureModel({required this.errors});

  factory CreateProductFailureModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductFailureModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProductFailureModelToJson(this);
}

@JsonSerializable()
class FieldError {
  final String type;
  final String msg;
  final String path;
  final String location;

  FieldError({
    required this.type,
    required this.msg,
    required this.path,
    required this.location,
  });

  factory FieldError.fromJson(Map<String, dynamic> json) =>
      _$FieldErrorFromJson(json);

  Map<String, dynamic> toJson() => _$FieldErrorToJson(this);
}
