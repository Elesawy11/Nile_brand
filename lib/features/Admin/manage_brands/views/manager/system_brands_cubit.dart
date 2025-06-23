import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Admin/manage_brands/data/repo/system_brands_repo.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';
import 'system_brands_state.dart';

class SystemBrandsCubit extends Cubit<SystemBrandsState> {
  final SystemBrandsRepo _repo;

  SystemBrandsCubit(this._repo) : super(SystemBrandsInitial());

  Future<void> getAllBrands() async {
    String? token = await BrandPrefs.getToken();
    emit(SystemBrandsLoading());
    final result = await _repo.getAllSystemBrands(token!);

    switch (result) {
      case Success():
        emit(SystemBrandsLoaded(result.data));

        break;
      case Failure():
        emit(SystemBrandsError(
            result.errorHandler.apiErrorModel.error!.message!));
    }
  }

  Future<void> deleteBrand(String id) async {
    String? token = await BrandPrefs.getToken();
    emit(SystemBrandsLoading());
    final result = await _repo.deleteBrand(id, "Bearer ${token!}");
    switch (result) {
      case Success():
        emit(BrandDeleteSuccess(result.data));

        break;
      case Failure():
        emit(SystemBrandsError(
            result.errorHandler.apiErrorModel.error!.message ??
                "Failed to delete"));
    }
  }
}
