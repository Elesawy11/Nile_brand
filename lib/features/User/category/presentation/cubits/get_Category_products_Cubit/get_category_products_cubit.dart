import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import '../../../data/repo/sub_category_repo_impl.dart';
import 'get_category_products_state.dart';

class GetCategoryProductsCubit extends Cubit<GetCategoryProductsState> {
  GetCategoryProductsCubit(this._subCategoryRepo)
      : super(GetCategoryProductsState.initial());
  final SubCategoryRepoImpl _subCategoryRepo;
  List<ProductModel> products = [];
  Future<void> getCategoryProducts({required String id}) async {
    emit(GetCategoryProductsState.getProductsLoading());
    final result = await _subCategoryRepo.getCategoryProducts(id: id);
    switch (result) {
      case Success():
        products = result.data;
        emit(
          GetCategoryProductsState.getProductsSuccess(
            products: products,
          ),
        );
        break;
      case Failure():
        emit(
          GetCategoryProductsState.getProductsError(
            error: result.errorHandler.apiErrorModel.error!.message ??
                "Unknown error",
          ),
        );
    }
  }
}
