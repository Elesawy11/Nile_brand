import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  String? message;
  String? token;
  Data? data;

  SignupResponse({this.message, this.token, this.data});
  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class Data {
  String? name;
  String? email;
  String? password;
  String? role;
  bool? active;
  String? sId;
  String? createdAt;
  String? updatedAt;

  Data({
    this.name,
    this.email,
    this.password,
    this.role,
    this.active,
    this.sId,
    this.createdAt,
    this.updatedAt,
  });
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
