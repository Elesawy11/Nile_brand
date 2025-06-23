import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/manager/display_products/display_products_state.dart';
import '../../../data/repo/owner_home_repo.dart';

class BrandProductsCubit extends Cubit<BrandProductsState> {
  final BrandProductsRepo repo;

  BrandProductsCubit(this.repo) : super(BrandProductsInitial());

  Future<void> getProducts() async {
    final String? token = await BrandPrefs.getToken();
    final String? brandId = await BrandPrefs.getbrandId();
    emit(BrandProductsLoading());
    final result = await repo.getBrandProducts(
        brandId ?? "685691c46b03f8f3085f1915", "Bearer ${token!}");
    print(result);

    switch (result) {
      case Success(:final data):
        emit(BrandProductsSuccess(data));
        break;

      case Failure():
        emit(BrandProductsFailure("Something went wrong"));
        break;
    }
  }

  Future<void> deleteBrandProduct(String productId) async {
    final String? token = await BrandPrefs.getToken();
    final String? brandId = await BrandPrefs.getbrandId();
    emit(DeleteBrandProductLoading());

    final result = await repo.delateBrandProduct(
        brandId ?? "685691c46b03f8f3085f1915", productId, "Bearer ${token!}");

    switch (result) {
      case Success():
        emit(DeleteBrandProduct());
        await getProducts();
      case Failure():
        emit(BrandProductsFailure(
            result.errorHandler.apiErrorModel.error!.message!.toString()));
    }
  }
}
