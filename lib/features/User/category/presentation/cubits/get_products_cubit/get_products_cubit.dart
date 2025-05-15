import 'dart:developer';

import 'package:bloc/bloc.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../data/models/product_model.dart';
import '../../../data/repo/sub_category_repo_impl.dart';
import 'get_products_state.dart';

class GetProductsCubit extends Cubit<GetProductsState> {
  GetProductsCubit(this._subCategoryRepo) : super(GetProductsState.initial());
  final List<ProductModel> products = [];
  final SubCategoryRepoImpl _subCategoryRepo;
  Future<void> getProducts() async {
    emit(GetProductsState.getProductLoading());
    final response = await _subCategoryRepo.getProducts();

    switch (response) {
      case Success():
        products.addAll(response.data);
        emit(
          GetProductsState.getProductSuccess(
            products: products,
          ),
        );

        break;
      case Failure():
        emit(
          GetProductsState.getProductError(
            error: response.errorHandler.apiErrorModel.error!.message ??
                "Unknown error",
          ),
        );
    }
  }

  void getCategoryProducts({required String id}) {
    emit(GetProductsState.getProductLoading());
    List<ProductModel> myproducts = [];
    for (var product in products) {
      if (product.category!.id == id) {
        myproducts.add(product);
      }
    }

    emit(
      GetProductsState.getProductSuccess(
        products: myproducts,
      ),
    );
  }

  void getSubCategoryProducts(String id) {
    emit(GetProductsState.getProductLoading());
    List<ProductModel> myproducts = [];
    for (var product in products) {
      if (product.subcategory!.id == id) {
        myproducts.add(product);
      }
    }
    emit(
      GetProductsState.getProductSuccess(
        products: myproducts,
      ),
    );
  }

  void getAllProducts() {
    emit(GetProductsState.getProductLoading());
    emit(
      GetProductsState.getProductSuccess(
        products: products,
      ),
    );
  }
}
