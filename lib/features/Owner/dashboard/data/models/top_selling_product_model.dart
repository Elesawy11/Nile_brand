import 'package:json_annotation/json_annotation.dart';

part 'top_selling_product_model.g.dart';

@JsonSerializable()
class TopSellingProductsResponse {
  final bool success;
  final List<TopSellingProductData> data;

  TopSellingProductsResponse({
    required this.success,
    required this.data,
  });

  factory TopSellingProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$TopSellingProductsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TopSellingProductsResponseToJson(this);
}

@JsonSerializable()
class TopSellingProductData {
  final Product product;
  final int salesCount;
  final double revenue;

  TopSellingProductData({
    required this.product,
    required this.salesCount,
    required this.revenue,
  });

  factory TopSellingProductData.fromJson(Map<String, dynamic> json) =>
      _$TopSellingProductDataFromJson(json);

  Map<String, dynamic> toJson() => _$TopSellingProductDataToJson(this);
}

@JsonSerializable()
class Product {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final Brand brand;
  final Category category;
  final SubCategory subcategory;

  Product({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.subcategory,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class Brand {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final Owner owner;

  Brand({
    required this.id,
    required this.name,
    required this.owner,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: '_id')
  final String id;
  final String name;

  Owner({
    required this.id,
    required this.name,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: '_id')
  final String id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class SubCategory {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final Category category;

  SubCategory({
    required this.id,
    required this.name,
    required this.category,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}
