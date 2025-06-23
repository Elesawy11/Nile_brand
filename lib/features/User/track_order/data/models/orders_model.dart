class OrdersModel {
  int? length;
  Pagination? pagination;
  List<Data>? data;

  OrdersModel({this.length, this.pagination, this.data});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    length = json['length'];
    pagination = json['pagination'] != null
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['length'] = length;
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pagination {
  int? currentPage;
  int? limit;
  int? totalpages;

  Pagination({this.currentPage, this.limit, this.totalpages});

  Pagination.fromJson(Map<String, dynamic> json) {
    currentPage = json['currentPage'];
    limit = json['limit'];
    totalpages = json['totalpages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currentPage'] = currentPage;
    data['limit'] = limit;
    data['totalpages'] = totalpages;
    return data;
  }
}

class Data {
  String? sId;
  List<CartItems>? cartItems;
  double? totalPrice;
  String? status;
  bool? isPaid;
  String? address;
  User? user;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.sId,
      this.cartItems,
      this.totalPrice,
      this.status,
      this.isPaid,
      this.address,
      this.user,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    if (json['cartItems'] != null) {
      cartItems = <CartItems>[];
      json['cartItems'].forEach((v) {
        cartItems!.add(CartItems.fromJson(v));
      });
    }
    totalPrice = json['totalPrice'];
    status = json['status'];
    isPaid = json['isPaid'];
    address = json['address'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    if (cartItems != null) {
      data['cartItems'] = cartItems!.map((v) => v.toJson()).toList();
    }
    data['totalPrice'] = totalPrice;
    data['status'] = status;
    data['isPaid'] = isPaid;
    data['address'] = address;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class CartItems {
  Product? product;
  int? quantity;
  double? price;
  String? sId;

  CartItems({this.product, this.quantity, this.price, this.sId});

  CartItems.fromJson(Map<String, dynamic> json) {
    product =
        json['product'] != null ? Product.fromJson(json['product']) : null;
    quantity = json['quantity'];
    price = json['price'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (product != null) {
      data['product'] = product!.toJson();
    }
    data['quantity'] = quantity;
    data['price'] = price;
    data['_id'] = sId;
    return data;
  }
}

class Product {
  String? sId;
  String? name;
  Brand? brand;
  Category? category;
  Subcategory? subcategory;
  String? id;

  Product(
      {this.sId,
      this.name,
      this.brand,
      this.category,
      this.subcategory,
      this.id});

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    subcategory = json['subcategory'] != null
        ? Subcategory.fromJson(json['subcategory'])
        : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (subcategory != null) {
      data['subcategory'] = subcategory!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class Brand {
  String? sId;
  String? name;
  Owner? owner;
  String? id;

  Brand({this.sId, this.name, this.owner, this.id});

  Brand.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    if (owner != null) {
      data['owner'] = owner!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class Owner {
  String? sId;
  String? name;

  Owner({this.sId, this.name});

  Owner.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    return data;
  }
}

class Category {
  String? sId;
  String? name;
  String? id;

  Category({this.sId, this.name, this.id});

  Category.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}

class Subcategory {
  String? sId;
  String? name;
  Category? category;
  String? id;

  Subcategory({this.sId, this.name, this.category, this.id});

  Subcategory.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    if (category != null) {
      data['category'] = category!.toJson();
    }
    data['id'] = id;
    return data;
  }
}

class User {
  String? sId;
  String? name;
  String? email;
  String? userImage;

  User({this.sId, this.name, this.email, this.userImage});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    email = json['email'];
    userImage = json['userImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['email'] = email;
    data['userImage'] = userImage;
    return data;
  }
}
