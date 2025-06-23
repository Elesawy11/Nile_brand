import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_cuopin_success.g.dart';

@HiveType(typeId: 2)
@JsonSerializable()
class CreateCuoponSuccess extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? expireTime;
  @HiveField(2)
  int? discount;
  @HiveField(3)
  String? owner;
  @HiveField(4)
  @JsonKey(name: "_id")
  @HiveField(5)
  String? id;
  @HiveField(6)
  String? createdAt;
  @HiveField(7)
  String? updatedAt;

  CreateCuoponSuccess(
      {this.name,
      this.expireTime,
      this.discount,
      this.owner,
      this.id,
      this.createdAt,
      this.updatedAt});

  factory CreateCuoponSuccess.fromJson(Map<String, dynamic> json) =>
      _$CreateCuoponSuccessFromJson(json);
}
