// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_brand_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateBrandRequestBody _$UpdateBrandRequestBodyFromJson(
        Map<String, dynamic> json) =>
    UpdateBrandRequestBody(
      name: json['name'] as String,
      description: json['description'] as String,
      taxID: json['taxID'] as String,
      logo: UpdateBrandRequestBody._fromJson(json['logo'] as String),
    );

Map<String, dynamic> _$UpdateBrandRequestBodyToJson(
        UpdateBrandRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'taxID': instance.taxID,
      'logo': UpdateBrandRequestBody._toJson(instance.logo),
    };
