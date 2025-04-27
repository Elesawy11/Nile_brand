// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizes:
          (json['sizes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      price: (json['price'] as num?)?.toDouble(),
      priceAfterDiscount: (json['priceAfterDiscount'] as num?)?.toDouble(),
      quantity: (json['quantity'] as num?)?.toInt(),
      sold: (json['sold'] as num?)?.toInt(),
      ratingAverage: (json['ratingAverage'] as num?)?.toInt(),
      ratingCount: (json['ratingCount'] as num?)?.toInt(),
      coverImage: json['coverImage'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory: json['subcategory'] == null
          ? null
          : Subcategory.fromJson(json['subcategory'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['iV'] as num?)?.toInt(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'description': instance.description,
      'colors': instance.colors,
      'sizes': instance.sizes,
      'price': instance.price,
      'priceAfterDiscount': instance.priceAfterDiscount,
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
      'iV': instance.iV,
      'id': instance.id,
    };

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'owner': instance.owner,
      'id': instance.id,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'id': instance.id,
    };

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      sId: json['sId'] as String?,
      name: json['name'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'name': instance.name,
      'category': instance.category,
      'id': instance.id,
    };
