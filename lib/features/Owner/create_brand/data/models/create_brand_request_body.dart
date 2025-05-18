import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'create_brand_request_body.g.dart';

@JsonSerializable()
class BrandCreateRequest {
  final String name;
  final String description;
  
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  final File logo;

  final String taxID;
  final String? owner;

  BrandCreateRequest({
    required this.name,
    required this.description,
    required this.logo,
    required this.taxID,
    this.owner,
  });

  factory BrandCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$BrandCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BrandCreateRequestToJson(this);

  // Custom fromJson method for XFile
  static File _fromJson(String filePath) {
    return File(filePath);
  }

  // Custom toJson method for XFile
  static String _toJson(File file) {
    return file.path;
  }
}
