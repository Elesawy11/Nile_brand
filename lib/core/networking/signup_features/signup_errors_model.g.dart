// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_errors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupErrorsModel _$SignupErrorsModelFromJson(Map<String, dynamic> json) =>
    SignupErrorsModel(
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => Errors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SignupErrorsModelToJson(SignupErrorsModel instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

Errors _$ErrorsFromJson(Map<String, dynamic> json) => Errors(
      type: json['type'] as String?,
      value: json['value'] as String?,
      msg: json['msg'] as String?,
      path: json['path'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$ErrorsToJson(Errors instance) => <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'msg': instance.msg,
      'path': instance.path,
      'location': instance.location,
    };
