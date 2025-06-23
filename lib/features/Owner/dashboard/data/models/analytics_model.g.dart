// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashboardModel _$DashboardModelFromJson(Map<String, dynamic> json) =>
    DashboardModel(
      success: json['success'] as bool,
      data: DashboardData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DashboardModelToJson(DashboardModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
    };

DashboardData _$DashboardDataFromJson(Map<String, dynamic> json) =>
    DashboardData(
      customerStats:
          CustomerStats.fromJson(json['customerStats'] as Map<String, dynamic>),
      id: json['_id'] as String,
      ownerId: Owner.fromJson(json['ownerId'] as Map<String, dynamic>),
      totalSales: (json['totalSales'] as num).toInt(),
      totalRevenue: (json['totalRevenue'] as num).toDouble(),
      dailyStats: (json['dailyStats'] as List<dynamic>)
          .map((e) => DailyStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      popularProducts: (json['popularProducts'] as List<dynamic>)
          .map((e) => PopularProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      brandStats: (json['brandStats'] as List<dynamic>)
          .map((e) => BrandStat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashboardDataToJson(DashboardData instance) =>
    <String, dynamic>{
      'customerStats': instance.customerStats.toJson(),
      '_id': instance.id,
      'ownerId': instance.ownerId.toJson(),
      'totalSales': instance.totalSales,
      'totalRevenue': instance.totalRevenue,
      'dailyStats': instance.dailyStats.map((e) => e.toJson()).toList(),
      'popularProducts':
          instance.popularProducts.map((e) => e.toJson()).toList(),
      'brandStats': instance.brandStats.map((e) => e.toJson()).toList(),
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
    };

CustomerStats _$CustomerStatsFromJson(Map<String, dynamic> json) =>
    CustomerStats(
      totalCustomers: (json['totalCustomers'] as num).toInt(),
      returningCustomers: (json['returningCustomers'] as num).toInt(),
      newCustomers: (json['newCustomers'] as num).toInt(),
    );

Map<String, dynamic> _$CustomerStatsToJson(CustomerStats instance) =>
    <String, dynamic>{
      'totalCustomers': instance.totalCustomers,
      'returningCustomers': instance.returningCustomers,
      'newCustomers': instance.newCustomers,
    };

DailyStat _$DailyStatFromJson(Map<String, dynamic> json) => DailyStat(
      id: json['_id'] as String,
      date: DateTime.parse(json['date'] as String),
      sales: (json['sales'] as num).toInt(),
      revenue: (json['revenue'] as num).toDouble(),
    );

Map<String, dynamic> _$DailyStatToJson(DailyStat instance) => <String, dynamic>{
      '_id': instance.id,
      'date': instance.date.toIso8601String(),
      'sales': instance.sales,
      'revenue': instance.revenue,
    };

PopularProduct _$PopularProductFromJson(Map<String, dynamic> json) =>
    PopularProduct(
      id: json['_id'] as String,
      productId: json['productId'] as String,
      salesCount: (json['salesCount'] as num).toInt(),
      revenue: (json['revenue'] as num).toDouble(),
    );

Map<String, dynamic> _$PopularProductToJson(PopularProduct instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productId': instance.productId,
      'salesCount': instance.salesCount,
      'revenue': instance.revenue,
    };

BrandStat _$BrandStatFromJson(Map<String, dynamic> json) => BrandStat(
      id: json['_id'] as String,
      brandId: json['brandId'] as String,
      brandName: json['brandName'] as String,
      brandLogo: json['brandLogo'] as String,
      totalSales: (json['totalSales'] as num).toInt(),
      totalRevenue: (json['totalRevenue'] as num).toDouble(),
    );

Map<String, dynamic> _$BrandStatToJson(BrandStat instance) => <String, dynamic>{
      '_id': instance.id,
      'brandId': instance.brandId,
      'brandName': instance.brandName,
      'brandLogo': instance.brandLogo,
      'totalSales': instance.totalSales,
      'totalRevenue': instance.totalRevenue,
    };
