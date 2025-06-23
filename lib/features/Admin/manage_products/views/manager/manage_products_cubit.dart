import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';

import 'package:nile_brand/features/Admin/manage_products/data/repo/system_products_repo.dart';
import '../../../../Owner/owner_helpers.dart';
import 'manage_products_state.dart';

class SystemProductsCubit extends Cubit<SystemProductsState> {
  final SystemProductsRepo _repo;

  SystemProductsCubit(this._repo) : super(SystemProductsInitial());

  Future<void> getAllProducts() async {
    String? token = await BrandPrefs.getToken();
    emit(SystemProductsLoading());
    final result = await _repo.getAllSystemProducts(token!);

    switch (result) {
      case Success():
        emit(SystemProductsLoaded(result.data));

        break;
      case Failure():
        emit(SystemProductsError(
            result.errorHandler.apiErrorModel.error!.message ??
                "Unknown error"));
    }
  }

  Future<void> deleteProduct(String id) async {
    String? token = await BrandPrefs.getToken();
    emit(SystemProductsLoading());
    final result = await _repo.deleteProduct(id, "Bearer ${token!}");
    switch (result) {
      case Success():
        emit(ProductDeleteSuccess(result.data));

        break;
      case Failure():
        emit(SystemProductsError(
            result.errorHandler.apiErrorModel.error!.message ??
                "Failed to delete"));
    }
  }
}
