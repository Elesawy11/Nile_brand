// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_failure_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductFailureModel _$CreateProductFailureModelFromJson(
        Map<String, dynamic> json) =>
    CreateProductFailureModel(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => FieldError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreateProductFailureModelToJson(
        CreateProductFailureModel instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

FieldError _$FieldErrorFromJson(Map<String, dynamic> json) => FieldError(
      type: json['type'] as String,
      msg: json['msg'] as String,
      path: json['path'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$FieldErrorToJson(FieldError instance) =>
    <String, dynamic>{
      'type': instance.type,
      'msg': instance.msg,
      'path': instance.path,
      'location': instance.location,
    };
