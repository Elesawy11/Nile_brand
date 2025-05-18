import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/Owner/owner_home/presentation/manager/display_products/display_products_state.dart';
import '../../../data/repo/owner_home_repo.dart';

class BrandProductsCubit extends Cubit<BrandProductsState> {
  final BrandProductsRepo repo;

  BrandProductsCubit(this.repo) : super(BrandProductsInitial());

  Future<void> getProducts(String brandId) async {
    emit(BrandProductsLoading());
    final result = await repo.getBrandProducts(brandId);

    switch (result) {
      case Success(:final data):
        emit(BrandProductsSuccess(data));
        break;

      case Failure():
        emit(BrandProductsFailure("Something went wrong"));
        break;
    }
  }

  Future<void> deleteBrandProduct(String brandId, String productId) async {
    emit(DeleteBrandProduct());

    final result = await repo.delateBrandProduct(brandId, productId);

    result.when(
      success: (_) => emit(DeleteBrandProduct()),
      failure: (error) => emit(BrandProductsFailure(error.toString()) )
    );
  }

}
