import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  String? sId;
  String? name;
  String? categoryImage;
  String? createdAt;
  String? updatedAt;
  String? id;

  CategoryModel(
      {this.sId,
      this.name,
      this.categoryImage,
      this.createdAt,
      this.updatedAt,
      this.id});

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
