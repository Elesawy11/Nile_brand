// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateUserRequest _$CreateUserRequestFromJson(Map<String, dynamic> json) =>
    CreateUserRequest(
      json['email'] as String,
      json['password'] as String,
      json['role'] as String,
      CreateUserRequest._fromJson(json['userImage'] as String),
      json['confirmPassword'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CreateUserRequestToJson(CreateUserRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'userImage': CreateUserRequest._toJson(instance.userImage),
      'confirmPassword': instance.confirmPassword,
    };
