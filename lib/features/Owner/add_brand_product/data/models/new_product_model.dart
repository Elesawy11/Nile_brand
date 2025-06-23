import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_product_model.g.dart';

@JsonSerializable()
class NewProductModel {
  final String name;
  final String description;
  final String price;
  final String quantity;
  final String category;

  @JsonKey(name: 'subcategory')
  final String subcategory;

  final String brand;

  final List<String> sizes;
  final List<String> colors;

  @JsonKey(fromJson: _imagesFromJson, toJson: _imagesToJson)
  final List<File> images;

  @JsonKey(fromJson: _coverFromJson, toJson: _coverToJson)
  final File coverImage;

  NewProductModel({
    required this.name,
    required this.description,
    required this.price,
    required this.quantity,
    required this.category,
    required this.subcategory,
    required this.brand,
    this.sizes = const [],
    this.colors = const [],
    required this.images,
    required this.coverImage,
  });

  factory NewProductModel.fromJson(Map<String, dynamic> json) =>
      _$NewProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$NewProductModelToJson(this);


  static List<File> _imagesFromJson(List<dynamic> paths) =>
      paths.map((path) => File(path as String)).toList();

  static List<String> _imagesToJson(List<File> files) =>
      files.map((file) => file.path).toList();

  // Handling single XFile (cover image)
  static File _coverFromJson(String path) => File(path);
  static String _coverToJson(File file) => file.path;
}
