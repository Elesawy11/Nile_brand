// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemBrand _$SystemBrandFromJson(Map<String, dynamic> json) => SystemBrand(
      json['logo'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      taxID: json['taxID'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
      id: json['id'] as String,
    );

Map<String, dynamic> _$SystemBrandToJson(SystemBrand instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'taxID': instance.taxID,
      'owner': instance.owner,
      'logo': instance.logo,
      'id': instance.id,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };
