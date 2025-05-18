import 'package:json_annotation/json_annotation.dart';

part 'create_cuopon_request_body.g.dart';

@JsonSerializable()
class CuponRequestBody {
  String? name;
  String? expireTime;
  int? discount;

  CuponRequestBody({
    this.name,
    this.expireTime,
    this.discount

  });

  Map<String, dynamic> toJson() => _$CuponRequestBodyToJson(this);
}
