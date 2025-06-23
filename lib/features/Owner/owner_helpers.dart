import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopon_request_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:hive/hive.dart';
import '../../features/Owner/create_brand/data/models/create_brand_response_body.dart';

class BrandPrefs {
  static const String _ownerIdKey = 'ownerId';
  static const String _brandIdKey = 'brandId';

  static String? brandOwner;
  static String? brandId;

  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    brandOwner = prefs.getString(_ownerIdKey);
    brandId = prefs.getString(_brandIdKey);
  }

  // Save brandId to SharedPreferences
  static Future<void> setOwnerId(String? brandId) async {
    final prefs = await SharedPreferences.getInstance();
    brandOwner = brandId;
    await prefs.setString(_ownerIdKey, brandId!);
  }

  static Future<void> setbrandId(String? brandId) async {
    final prefs = await SharedPreferences.getInstance();
    brandId = brandId;
    await prefs.setString(_brandIdKey, brandId!);
  }

  static Future<String?> getbrandId() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(_brandIdKey);
  }

  /// Retrieve brandId from SharedPreferences
  static Future<String?> getOwnerId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_ownerIdKey);
  }

  static const _tokenKey = 'authToken';

  static Future<void> setToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
  }

  static Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  static Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
  }

  /// Optional: clear brandId
  static Future<void> clearBrandId() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_brandIdKey);
  }
}

class BrandStorage {
  static const _boxName = 'brand_data';
  static const _cuponBoxName = 'cupon_data';
  static BrandData? brandData;

  static Future<void> saveBrandData(BrandData data) async {
    final box = await Hive.openBox<BrandData>(_boxName);
    await box.put('owner_info', data);
  }

  static Future<BrandData> getBrandData() async {
    final box = await Hive.openBox<BrandData>(_boxName);
    brandData = box.get('owner_info');
    return brandData!;
  }

  static Future<void> clearBrandData() async {
    final box = await Hive.openBox<BrandData>(_boxName);
    await box.delete('owner_info');
  }

  static Future<void> saveCoupons(List<CreateCuoponSuccess> coupons) async {
    final box = await Hive.openBox<CreateCuoponSuccess>(_cuponBoxName);
    for (int i = 0; i < coupons.length; i++) {
      await box.put(i, coupons[i]);
    }
  }

  static Future<List<CreateCuoponSuccess>> getCoupons() async {
    final box = await Hive.openBox<CreateCuoponSuccess>(_cuponBoxName);
    return box.values.toList();
  }
}
