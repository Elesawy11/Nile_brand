import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/repo/sub_category_repo_impl.dart';

import 'get_sub_category_product_state.dart';

class GetSubCategoryProductCubit extends Cubit<GetSubCategoryProductState> {
  GetSubCategoryProductCubit(this._repo)
      : super(GetSubCategoryProductState.initial());

  final SubCategoryRepoImpl _repo;
  void getSubCategoryProducts(
      {required String cId, required String subId}) async {
    emit(const GetSubCategoryProductState.getProductLoading());
    final result = await _repo.getSubCategoryProducts(cId: cId, subId: subId);
    switch (result) {
      case Success():
        final products = result.data;
        emit(GetSubCategoryProductState.getProductSuccess(products: products));
        break;
      case Failure():
        emit(
          GetSubCategoryProductState.getProductError(
            error: result.errorHandler.apiErrorModel.error!.message ??
                "Unknown error",
          ),
        );
    }
  }
}
