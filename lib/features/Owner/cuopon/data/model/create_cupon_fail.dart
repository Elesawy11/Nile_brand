import 'package:json_annotation/json_annotation.dart';

part 'create_cupon_fail.g.dart';

@JsonSerializable()
class CouponErrorModel {
  final List<FieldError> errors;

  CouponErrorModel({required this.errors});

  factory CouponErrorModel.fromJson(Map<String, dynamic> json) =>
      _$CouponErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$CouponErrorModelToJson(this);
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
