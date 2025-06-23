import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/cuopon/data/api/cupons_source.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopon_request_body.dart';
import '../../../../../core/networking/api_error_handler.dart';

class CuponsRepo {
  final CouponsSource _couponsSource;

  CuponsRepo(this._couponsSource);
  Future<ApiResult<CreateCuoponSuccess>> createCupon(
      CuponRequestBody newCupon, String token) async {
    try {
      final response = await _couponsSource.createCoupon(newCupon, token);
      final CreateCuoponSuccess cupon =
          CreateCuoponSuccess.fromJson(response["data"]);
      return ApiResult.success(cupon);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteCupon(String id, String token) async {
    try {
      await _couponsSource.deletCoupon(id, token);
      return const ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<List<CreateCuoponSuccess>>> getAllCupons(
      String token) async {
    try {
      final response = await _couponsSource.getAllCupons(token);

      final List<dynamic> cupons = response["data"];
      final List<CreateCuoponSuccess> data = cupons
          .map<CreateCuoponSuccess>(
              (data) => CreateCuoponSuccess.fromJson(data))
          .toList();
      ;
      return ApiResult.success(data);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> sendCupons(String email, String token) async {
    try {
      final response = await _couponsSource.sendCupon(email, token);
      return ApiResult.success((response as Map<String, dynamic>)["message"]);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(("Please Try again ")));
    }
  }

  Future<ApiResult<String>> updateCupon(
      String id, CuponRequestBody newCupon, String token) async {
    try {
      final response = await _couponsSource.updateCupon(id, newCupon, token);
      print(CreateCuoponSuccess.fromJson(response["data"]));
      return const ApiResult.success("Cupon Updated Successfully");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(("Please Try again ")));
    }
  }
}
