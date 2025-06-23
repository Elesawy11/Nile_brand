import 'package:bloc/bloc.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/track_order/data/repo/get_order_repo_impl.dart';
// import '../../../data/models/orders_model.dart';
import 'get_orders_state.dart';

class GetOrdersCubit extends Cubit<GetOrdersState> {
  GetOrdersCubit(this._repo) : super(const GetOrdersState.initial());
  final GetOrderRepoImpl _repo;
  Future<void> getOrders() async {
    emit(const GetOrdersState.getOrdersLoading());
    final result = await _repo.getOrders();
    switch (result) {
      case Success():
        emit(
          GetOrdersState.getOrdersSuccess(
            orders: result.data,
          ),
        );
        break;
      case Failure():
        emit(
          GetOrdersState.getOrdersError(
            error: result.errorHandler.apiErrorModel.error?.message ??
                "Unknown error",
          ),
        );
        break;
      default:
    }
  }
}
