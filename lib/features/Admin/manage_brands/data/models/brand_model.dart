import 'package:json_annotation/json_annotation.dart';

part 'brand_model.g.dart';

@JsonSerializable()
class SystemBrand {
  final String name;
  final String description;
  final String taxID;
  final Owner owner;

  final String? logo;

  final String id;

  SystemBrand(
    this.logo, {

    required this.name,
    required this.description,
    required this.taxID,
    required this.owner,
    required this.id,
  });

  factory SystemBrand.fromJson(Map<String, dynamic> json) =>
      _$SystemBrandFromJson(json);
  Map<String, dynamic> toJson() => _$SystemBrandToJson(this);
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
