import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String? sId;
  String? name;
  String? description;
  List<String>? colors;
  List<String>? sizes;
  double? price;
  double? priceAfterDiscount;
  int? quantity;
  int? sold;
  int? ratingAverage;
  int? ratingCount;
  String? coverImage;
  List<String>? images;
  Brand? brand;
  Category? category;
  Subcategory? subcategory;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? id;

  ProductModel(
      {this.sId,
      this.name,
      this.description,
      this.colors,
      this.sizes,
      this.price,
      this.priceAfterDiscount,
      this.quantity,
      this.sold,
      this.ratingAverage,
      this.ratingCount,
      this.coverImage,
      this.images,
      this.brand,
      this.category,
      this.subcategory,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.id});
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class Brand {
  String? sId;
  String? name;
  Owner? owner;
  String? id;

  Brand({this.sId, this.name, this.owner, this.id});
  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
  Map<String, dynamic> toJson() => _$BrandToJson(this);
}

@JsonSerializable()
class Owner {
  String? sId;
  String? name;

  Owner({this.sId, this.name});
  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class Category {
  String? sId;
  String? name;
  String? id;

  Category({this.sId, this.name, this.id});
  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Subcategory {
  String? sId;
  String? name;
  Category? category;
  String? id;

  Subcategory({this.sId, this.name, this.category, this.id});

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
  Map<String, dynamic> toJson() => _$SubcategoryToJson(this);
}

