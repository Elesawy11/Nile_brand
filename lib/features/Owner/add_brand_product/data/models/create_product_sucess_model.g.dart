// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_sucess_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductSucessModel _$CreateProductSucessModelFromJson(
        Map<String, dynamic> json) =>
    CreateProductSucessModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      sold: (json['sold'] as num).toInt(),
      ratingAverage: (json['ratingAverage'] as num).toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      coverImage: json['coverImage'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      brand: json['brand'] as String,
      category: json['category'] as String,
      subcategory: json['subcategory'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$CreateProductSucessModelToJson(
        CreateProductSucessModel instance) =>
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
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
