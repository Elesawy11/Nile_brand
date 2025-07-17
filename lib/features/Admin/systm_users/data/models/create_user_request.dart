import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'create_user_request.g.dart';

@JsonSerializable()
class CreateUserRequest {
  final String name;
  final String email;
  final String password;
  final String role;

  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final File userImage;
  final String confirmPassword;

  CreateUserRequest(
    this.email,
    this.password,
    this.role,
    this.userImage,
    this.confirmPassword, {
    required this.name,

  });

  factory CreateUserRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateUserRequestToJson(this);

  // Custom fromJson method for XFile
  static File _fromJson(String filePath) {
    return File(filePath);
  }

  // Custom toJson method for XFile
  static String _toJson(File file) {
    return file.path;
  }
}
