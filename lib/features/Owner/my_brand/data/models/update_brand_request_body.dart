import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_brand_request_body.g.dart';

@JsonSerializable()
class UpdateBrandRequestBody {
  final String name;
  final String description;
  final String taxID;

  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final File logo;

  UpdateBrandRequestBody({
    required this.name,
    required this.description,
    required this.taxID,
    required this.logo,
  });

  factory UpdateBrandRequestBody.fromJson(Map<String, dynamic> json) =>
      _$UpdateBrandRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateBrandRequestBodyToJson(this);

  // Custom fromJson method for XFile
  static File _fromJson(String filePath) {
    return File(filePath);
  }

  // Custom toJson method for XFile
  static String _toJson(File file) {
    return file.path;
  }
}
