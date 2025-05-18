// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewProductModel _$NewProductModelFromJson(Map<String, dynamic> json) =>
    NewProductModel(
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      quantity: json['quantity'] as String,
      category: json['category'] as String,
      subcategory: json['subcategory'] as String,
      brand: json['brand'] as String,
      sizes:
          (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      colors: (json['colors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      images: NewProductModel._imagesFromJson(json['images'] as List),
      coverImage: NewProductModel._coverFromJson(json['coverImage'] as String),
    );

Map<String, dynamic> _$NewProductModelToJson(NewProductModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'quantity': instance.quantity,
      'category': instance.category,
      'subcategory': instance.subcategory,
      'brand': instance.brand,
      'sizes': instance.sizes,
      'colors': instance.colors,
      'images': NewProductModel._imagesToJson(instance.images),
      'coverImage': NewProductModel._coverToJson(instance.coverImage),
    };
