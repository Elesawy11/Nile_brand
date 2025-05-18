import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_brand_response_body.g.dart';

@JsonSerializable()
class BrandUpdateResponse {
  final UpdatedBrandData data;
  final String? message;

  BrandUpdateResponse({required this.data, this.message});

  factory BrandUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BrandUpdateResponseToJson(this);
}

@JsonSerializable()
class UpdatedBrandData {
  final String id;

  @JsonKey(name: '_id')
  final String mongoId;

  final String name;
  

  final String logo;

  final String description;
  final String taxID;
  final Owner owner;
  final String createdAt;
  final String updatedAt;

  UpdatedBrandData({
    required this.id,
    required this.mongoId,
    required this.name,
    required this.logo,
    required this.description,
    required this.taxID,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UpdatedBrandData.fromJson(Map<String, dynamic> json) =>
      _$UpdatedBrandDataFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatedBrandDataToJson(this);


}

@JsonSerializable()
class Owner {


  @JsonKey(name: '_id')
  final String Id;

  final String name;

  Owner({
  
    required this.Id,
    required this.name,
  });

  factory Owner.fromJson(Map<String, dynamic> json) =>
      _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}
