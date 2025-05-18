// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_products_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllProductsResponse _$AllProductsResponseFromJson(Map<String, dynamic> json) =>
    AllProductsResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => BrandProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllProductsResponseToJson(
        AllProductsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

BrandProductModel _$BrandProductModelFromJson(Map<String, dynamic> json) =>
    BrandProductModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      sold: (json['sold'] as num).toInt(),
      ratingAverage: (json['ratingAverage'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      coverImage: json['coverImage'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      brand: BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: SubcategoryModel.fromJson(
          json['subcategory'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$BrandProductModelToJson(BrandProductModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'price': instance.price,
      'quantity': instance.quantity,
      'sold': instance.sold,
      'ratingAverage': instance.ratingAverage,
      'ratingCount': instance.ratingCount,
      'coverImage': instance.coverImage,
      'images': instance.images,
      'brand': instance.brand,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) => BrandModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      owner: OwnerModel.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BrandModelToJson(BrandModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
    };

OwnerModel _$OwnerModelFromJson(Map<String, dynamic> json) => OwnerModel(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$OwnerModelToJson(OwnerModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

SubcategoryModel _$SubcategoryModelFromJson(Map<String, dynamic> json) =>
    SubcategoryModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      category:
          CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubcategoryModelToJson(SubcategoryModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'category': instance.category,
    };
