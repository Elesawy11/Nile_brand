import 'package:json_annotation/json_annotation.dart';

part 'create_product_sucess_model.g.dart';

@JsonSerializable()
class CreateProductSucessModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String description;
  final List<String> colors;
  final List<String> sizes;
  final double price;
  final int quantity;
  final int sold;
  final double ratingAverage;
  final int ratingCount;
  final String coverImage;
  final List<String> images;
  final String brand;
  final String category;
  final String subcategory;
  final DateTime createdAt;
  final DateTime updatedAt;

  CreateProductSucessModel({
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

  factory CreateProductSucessModel.fromJson(Map<String, dynamic> json) =>
      _$CreateProductSucessModelFromJson(json);

  Map<String, dynamic> toJson() => _$CreateProductSucessModelToJson(this);
}
