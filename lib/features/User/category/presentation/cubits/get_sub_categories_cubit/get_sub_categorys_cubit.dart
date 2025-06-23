import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/repo/sub_category_repo_impl.dart';
import '../../../data/models/sub_category_model.dart';
import 'get_sub_categorys_state.dart';

class GetSubCategorysCubit extends Cubit<GetSubCategorysState> {
  GetSubCategorysCubit(this._subCategoryRepo)
      : super(GetSubCategorysState.initial());
  final SubCategoryRepoImpl _subCategoryRepo;
  List<SubCategoryModel> subCategories = [];
  Future<void> getSubCategories() async {
    emit(GetSubCategorysState.subCategoryLoading());
    final result = await _subCategoryRepo.getSubCategories();
    switch (result) {
      case Success():
        subCategories.addAll(result.data);

        emit(
          GetSubCategorysState.subCategorySuccess(
            subCategories: subCategories,
          ),
        );
        log('all ///////sub categories are ====>>>>>>>>${subCategories.length}');
        break;
      case Failure():
        emit(
          GetSubCategorysState.subCategoryError(
            error: result.errorHandler.apiErrorModel.error!.message ??
                "Unknown error",
          ),
        );
    }
  }

  void getCategorySubCategories({required String id}) {
    emit(GetSubCategorysState.subCategoryLoading());
    List<SubCategoryModel> mySubCategories = [];
    for (var subCategory in subCategories) {
      if (subCategory.category!.id == id) {
        mySubCategories.add(subCategory);
      }
    }
    emit(
      GetSubCategorysState.subCategorySuccess(
        subCategories: mySubCategories,
      ),
    );
    log('my sub categories are ====>>>>>>>>${mySubCategories.length}');
  }

  void getAllSubCategories() {
    emit(const GetSubCategorysState.subCategoryLoading());
    emit(
      GetSubCategorysState.subCategorySuccess(
        subCategories: subCategories,
      ),
    );
  }
}
