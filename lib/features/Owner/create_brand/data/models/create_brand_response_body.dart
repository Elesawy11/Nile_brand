import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_brand_response_body.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class BrandCreateResponse {
  @HiveField(0)
  final BrandData data;

  BrandCreateResponse({required this.data});

  factory BrandCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$BrandCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BrandCreateResponseToJson(this);
}

@HiveType(typeId: 1)
@JsonSerializable()
class BrandData {
  @HiveField(0)
  @JsonKey(name: '_id')
  final String id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String? logo;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final String taxID;

  @HiveField(5)
  final String owner;

  @HiveField(6)
  final String createdAt;

  @HiveField(7)
  final String updatedAt;

  BrandData({
    required this.id,
    required this.name,
    required this.logo,
    required this.description,
    required this.taxID,
    required this.owner,
    required this.createdAt,
    required this.updatedAt,
  });

  factory BrandData.fromJson(Map<String, dynamic> json) =>
      _$BrandDataFromJson(json);

  Map<String, dynamic> toJson() => _$BrandDataToJson(this);
}
