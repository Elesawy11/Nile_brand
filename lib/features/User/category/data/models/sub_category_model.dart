import 'package:json_annotation/json_annotation.dart';

import 'product_model.dart';
part 'sub_category_model.g.dart';

@JsonSerializable()
class SubCategoryModel {
  String? sId;
  String? name;
  Category? category;
  String? createdAt;
  String? updatedAt;
  String? id;
  List<ProductModel>? products;

  SubCategoryModel({
    this.sId,
    this.name,
    this.category,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.products,
  });

  factory SubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubCategoryModelToJson(this);
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
