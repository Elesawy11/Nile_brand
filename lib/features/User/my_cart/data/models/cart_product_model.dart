import 'package:json_annotation/json_annotation.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
part 'cart_product_model.g.dart';

@JsonSerializable()
class CartProductModel {
  ProductModel? product;
  int? quantity;
  double? price;
  String? sId;

  CartProductModel({this.product, this.quantity, this.price, this.sId});
  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$CartProductModelToJson(this);
}
