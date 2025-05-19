// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_brand_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandCreateRequest _$BrandCreateRequestFromJson(Map<String, dynamic> json) =>
    BrandCreateRequest(
      name: json['name'] as String,
      description: json['description'] as String,
      logo: BrandCreateRequest._fromJson(json['logo'] as String),
      taxID: json['taxID'] as String,
      owner: json['owner'] as String?,
    );

Map<String, dynamic> _$BrandCreateRequestToJson(BrandCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'logo': BrandCreateRequest._toJson(instance.logo),
      'taxID': instance.taxID,
      'owner': instance.owner,
    };
