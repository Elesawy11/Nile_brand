// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subCategory_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoryResponse _$SubCategoryResponseFromJson(Map<String, dynamic> json) =>
    SubCategoryResponse(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      category: json['category'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$SubCategoryResponseToJson(
        SubCategoryResponse instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
