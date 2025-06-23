// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_selling_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopSellingProductsResponse _$TopSellingProductsResponseFromJson(
        Map<String, dynamic> json) =>
    TopSellingProductsResponse(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => TopSellingProductData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopSellingProductsResponseToJson(
        TopSellingProductsResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
    };

TopSellingProductData _$TopSellingProductDataFromJson(
        Map<String, dynamic> json) =>
    TopSellingProductData(
      product: Product.fromJson(json['product'] as Map<String, dynamic>),
      salesCount: (json['salesCount'] as num).toInt(),
      revenue: (json['revenue'] as num).toDouble(),
    );

Map<String, dynamic> _$TopSellingProductDataToJson(
        TopSellingProductData instance) =>
    <String, dynamic>{
      'product': instance.product,
      'salesCount': instance.salesCount,
      'revenue': instance.revenue,
    };

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['_id'] as String,
      name: json['name'] as String,
      brand: Brand.fromJson(json['brand'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      subcategory:
          SubCategory.fromJson(json['subcategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'category': instance.category,
      'subcategory': instance.subcategory,
    };

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      id: json['_id'] as String,
      name: json['name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'owner': instance.owner,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['_id'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
    };

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      id: json['_id'] as String,
      name: json['name'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'category': instance.category,
    };
