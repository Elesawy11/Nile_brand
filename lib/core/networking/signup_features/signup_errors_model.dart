import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'signup_errors_model.g.dart';

@JsonSerializable()
class SignupErrorsModel {
  List<Errors>? errors;

  SignupErrorsModel({this.errors});

  factory SignupErrorsModel.fromJson(Map<String, dynamic> json) =>
      _$SignupErrorsModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignupErrorsModelToJson(this);
}

@JsonSerializable()
class Errors {
  String? type;
  String? value;
  String? msg;
  String? path;
  String? location;

  Errors({this.type, this.value, this.msg, this.path, this.location});

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
