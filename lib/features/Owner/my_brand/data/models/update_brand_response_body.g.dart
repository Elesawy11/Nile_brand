// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_brand_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrandUpdateResponse _$BrandUpdateResponseFromJson(Map<String, dynamic> json) =>
    BrandUpdateResponse(
      data: UpdatedBrandData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$BrandUpdateResponseToJson(
        BrandUpdateResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };

UpdatedBrandData _$UpdatedBrandDataFromJson(Map<String, dynamic> json) =>
    UpdatedBrandData(
      id: json['id'] as String,
      mongoId: json['_id'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String,
      description: json['description'] as String,
      taxID: json['taxID'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UpdatedBrandDataToJson(UpdatedBrandData instance) =>
    <String, dynamic>{
      'id': instance.id,
      '_id': instance.mongoId,
      'name': instance.name,
      'logo': instance.logo,
      'description': instance.description,
      'taxID': instance.taxID,
      'owner': instance.owner,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      Id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      '_id': instance.Id,
      'name': instance.name,
    };
