import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final bool? success;
  final Error? error;

  ApiErrorModel({this.success, this.error});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

@JsonSerializable()
class Error {
  Error({this.message, this.msg});

  final String? message;
  final String? msg;
  String get errorMessage => message ?? msg ?? 'Unknown error';

  factory Error.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);
}
