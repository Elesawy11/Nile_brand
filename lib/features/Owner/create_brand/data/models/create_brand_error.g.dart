// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brand_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandErrorResponse _$BrandErrorResponseFromJson(Map<String, dynamic> json) =>
    BrandErrorResponse(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => FieldError.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BrandErrorResponseToJson(BrandErrorResponse instance) =>
    <String, dynamic>{
      'errors': instance.errors,
    };

FieldError _$FieldErrorFromJson(Map<String, dynamic> json) => FieldError(
      type: json['type'] as String,
      msg: json['msg'] as String,
      path: json['path'] as String,
      location: json['location'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$FieldErrorToJson(FieldError instance) =>
    <String, dynamic>{
      'type': instance.type,
      'msg': instance.msg,
      'path': instance.path,
      'location': instance.location,
      'value': instance.value,
    };
