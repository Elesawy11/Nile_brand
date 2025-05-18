// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cuopon_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CuponRequestBody _$CuponRequestBodyFromJson(Map<String, dynamic> json) =>
    CuponRequestBody(
      name: json['name'] as String?,
      expireTime: json['expireTime'] as String?,
      discount: (json['discount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CuponRequestBodyToJson(CuponRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'expireTime': instance.expireTime,
      'discount': instance.discount,
    };
