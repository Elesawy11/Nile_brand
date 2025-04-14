// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_pass_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPassRequest _$ResetPassRequestFromJson(Map<String, dynamic> json) =>
    ResetPassRequest(
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
    );

Map<String, dynamic> _$ResetPassRequestToJson(ResetPassRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
