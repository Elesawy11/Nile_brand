import 'package:json_annotation/json_annotation.dart';

part 'all_products_response_body.g.dart';

@JsonSerializable()
class AllProductsResponse {
  final List<BrandProductModel> data;

  AllProductsResponse({required this.data});

  factory AllProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$AllProductsResponseFromJson(json);
}

@JsonSerializable()
class BrandProductModel {
  @JsonKey(name: "_id")
  final String id;
  final String name;
  final String description;
  final List<String> colors;
  final List<String> sizes;
  final int price;
  final int quantity;
  final int sold;
  final double ratingAverage;
  final int ratingCount;
  final String? coverImage;
  final List<String> images;
  final BrandModel brand;
  final CategoryModel category;
  final SubcategoryModel subcategory;
  final String createdAt;
  final String updatedAt;

  BrandProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.colors,
    required this.sizes,
    required this.price,
    required this.quantity,
    required this.sold,
    required this.ratingAverage,
    required this.ratingCount,
    required this.coverImage,
    required this.images,
    required this.brand,
    required this.category,
    required this.subcategory,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BrandProductModel.fromJson(Map<String, dynamic> json) =>
      _$BrandProductModelFromJson(json);
}

@JsonSerializable()
class BrandModel {
  @JsonKey(name: "_id")
  final String id;
  final String name;
  final OwnerModel owner;

  BrandModel({
    required this.id,
    required this.name,
    required this.owner,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}

@JsonSerializable()
class OwnerModel {
  @JsonKey(name: "_id")
  final String id;
  final String name;

  OwnerModel({
    required this.id,
    required this.name,
  });

  factory OwnerModel.fromJson(Map<String, dynamic> json) =>
      _$OwnerModelFromJson(json);
}

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: "_id")
  final String id;
  final String name;

  CategoryModel({
    required this.id,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@JsonSerializable()
class SubcategoryModel {
  @JsonKey(name: "_id")
  final String id;
  final String name;
  final CategoryModel category;

  SubcategoryModel({
    required this.id,
    required this.name,
    required this.category,
  });

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryModelFromJson(json);
}
