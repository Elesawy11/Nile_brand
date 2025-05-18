import 'package:json_annotation/json_annotation.dart';

part 'create_brand_error.g.dart';

@JsonSerializable()
class BrandErrorResponse {
  final List<FieldError> errors;

  BrandErrorResponse({required this.errors});

  factory BrandErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BrandErrorResponseToJson(this);
}

@JsonSerializable()
class FieldError {
  final String type;
  final String msg;
  final String path;
  final String location;


  final dynamic value;

  FieldError({
    required this.type,
    required this.msg,
    required this.path,
    required this.location,
    this.value,
  });

  factory FieldError.fromJson(Map<String, dynamic> json) =>
      _$FieldErrorFromJson(json);

  Map<String, dynamic> toJson() => _$FieldErrorToJson(this);
}
