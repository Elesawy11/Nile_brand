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
  Future<void> getSubCategories({required String id}) async {
    emit(GetSubCategorysState.subCategoryLoading());
    final result = await _subCategoryRepo.getSubCategories(id: id);
    switch (result) {
      case Success():
        subCategories = result.data;
        emit(
          GetSubCategorysState.subCategorySuccess(
            subCategories: subCategories,
          ),
        );
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
}
