import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderModel {
  @JsonKey(name: '_id')
  final String id;
  final List<CartItemModel> cartItems;
  final double totalPrice;
  final String status;
  final bool isPaid;
  final String address;
  final UserModel user;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? paidAt;

  OrderModel({
    required this.id,
    required this.cartItems,
    required this.totalPrice,
    required this.status,
    required this.isPaid,
    required this.address,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
    this.paidAt,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
  Map<String, dynamic> toJson() => _$OrderModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CartItemModel {
  @JsonKey(name: '_id')
  final String id;
  final ProductModel product;
  final int quantity;
  final double price;

  CartItemModel({
    required this.id,
    required this.product,
    required this.quantity,
    required this.price,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final BrandModel brand;
  final CategoryModel category;
  final SubcategoryModel subcategory;

  ProductModel({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.subcategory,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class BrandModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final OwnerModel owner;

  BrandModel({
    required this.id,
    required this.name,
    required this.owner,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) => _$BrandModelFromJson(json);
  Map<String, dynamic> toJson() => _$BrandModelToJson(this);
}

@JsonSerializable()
class OwnerModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;

  OwnerModel({
    required this.id,
    required this.name,
  });

  factory OwnerModel.fromJson(Map<String, dynamic> json) => _$OwnerModelFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerModelToJson(this);
}

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;

  CategoryModel({
    required this.id,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SubcategoryModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final CategoryModel category;

  SubcategoryModel({
    required this.id,
    required this.name,
    required this.category,
  });

  factory SubcategoryModel.fromJson(Map<String, dynamic> json) => _$SubcategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$SubcategoryModelToJson(this);
}

@JsonSerializable()
class UserModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;
  final String userImage;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.userImage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
