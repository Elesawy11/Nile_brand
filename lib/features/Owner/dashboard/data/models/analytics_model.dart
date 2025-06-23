import 'package:json_annotation/json_annotation.dart';

part 'analytics_model.g.dart';

@JsonSerializable(explicitToJson: true)
class DashboardModel {
  final bool success;
  final DashboardData data;

  DashboardModel({required this.success, required this.data});

  factory DashboardModel.fromJson(Map<String, dynamic> json) => _$DashboardModelFromJson(json);
  Map<String, dynamic> toJson() => _$DashboardModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DashboardData {
  final CustomerStats customerStats;

  @JsonKey(name: '_id')
  final String id;

  final Owner ownerId;
  final int totalSales;
  final double totalRevenue;

  final List<DailyStat> dailyStats;
  final List<PopularProduct> popularProducts;
  final List<BrandStat> brandStats;

  DashboardData({
    required this.customerStats,
    required this.id,
    required this.ownerId,
    required this.totalSales,
    required this.totalRevenue,
    required this.dailyStats,
    required this.popularProducts,
    required this.brandStats,
  });

  factory DashboardData.fromJson(Map<String, dynamic> json) => _$DashboardDataFromJson(json);
  Map<String, dynamic> toJson() => _$DashboardDataToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;

  Owner({
    required this.id,
    required this.name,
    required this.email,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class CustomerStats {
  final int totalCustomers;
  final int returningCustomers;
  final int newCustomers;

  CustomerStats({
    required this.totalCustomers,
    required this.returningCustomers,
    required this.newCustomers,
  });

  factory CustomerStats.fromJson(Map<String, dynamic> json) => _$CustomerStatsFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerStatsToJson(this);
}

@JsonSerializable()
class DailyStat {
  @JsonKey(name: '_id')
  final String id;
  final DateTime date;
  final int sales;
  final double revenue;

  DailyStat({
    required this.id,
    required this.date,
    required this.sales,
    required this.revenue,
  });

  factory DailyStat.fromJson(Map<String, dynamic> json) => _$DailyStatFromJson(json);
  Map<String, dynamic> toJson() => _$DailyStatToJson(this);
}

@JsonSerializable()
class PopularProduct {
  @JsonKey(name: '_id')
  final String id;
  final String productId;
  final int salesCount;
  final double revenue;

  PopularProduct({
    required this.id,
    required this.productId,
    required this.salesCount,
    required this.revenue,
  });

  factory PopularProduct.fromJson(Map<String, dynamic> json) => _$PopularProductFromJson(json);
  Map<String, dynamic> toJson() => _$PopularProductToJson(this);
}

@JsonSerializable()
class BrandStat {
  @JsonKey(name: '_id')
  final String id;
  final String brandId;
  final String brandName;
  final String brandLogo;
  final int totalSales;
  final double totalRevenue;

  BrandStat({
    required this.id,
    required this.brandId,
    required this.brandName,
    required this.brandLogo,
    required this.totalSales,
    required this.totalRevenue,
  });

  factory BrandStat.fromJson(Map<String, dynamic> json) => _$BrandStatFromJson(json);
  Map<String, dynamic> toJson() => _$BrandStatToJson(this);
}
