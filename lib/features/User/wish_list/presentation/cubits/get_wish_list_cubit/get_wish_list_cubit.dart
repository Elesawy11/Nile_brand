import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/wish_list/data/repo_impl/wish_list_repo_impl.dart';

import 'get_wish_list_state.dart';

class GetWishListCubit extends Cubit<GetWishListState> {
  GetWishListCubit(this._repo) : super(const GetWishListState.initial());
  final WishListRepoImpl _repo;
  Future<void> getWishListProduct() async {
    emit(const GetWishListState.getWishListLoading());
    final response = await _repo.getWishList();

    switch (response) {
      case Success():
        emit(GetWishListState.getWishListSuccess(products: response.data));
      case Failure():
        emit(GetWishListState.getWishListError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'UnKnown error'));
        break;
      default:
    }
  }
}
