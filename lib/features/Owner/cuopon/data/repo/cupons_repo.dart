import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/cuopon/data/api/cupons_source.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopon_request_body.dart';
import '../../../../../core/networking/api_error_handler.dart';

class CuponsRepo {
  final CouponsSource _couponsSource;

  CuponsRepo(this._couponsSource);
  Future<ApiResult<CreateCuoponSuccess>> createCupon(CuponRequestBody newCupon)async{
    try {
      final response = await _couponsSource.createCoupon(newCupon);
      final CreateCuoponSuccess cupon = CreateCuoponSuccess.fromJson(response["data"]);
      return ApiResult.success(cupon);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<String>> deleteCupon(String id)async{
    try {
       await _couponsSource.deletCoupon(id);
      return ApiResult.success("Deleted Successfully!");
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }




  }



}

