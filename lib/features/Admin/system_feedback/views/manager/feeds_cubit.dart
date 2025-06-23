import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/Admin/system_feedback/data/repo/system_feedback_repo.dart';
import 'package:nile_brand/features/Admin/system_feedback/views/manager/feeds_state.dart';
import 'package:nile_brand/features/Owner/owner_helpers.dart';

import '../../../../../core/networking/api_result.dart';

class SystemFeedbackCubit extends Cubit<SystemFeedbackState> {
  final SystemFeedbackRepo _feedbackRepo;

  SystemFeedbackCubit(this._feedbackRepo) : super(SystemFeedbackInitial());

  Future<void> fetchSystemFeedbacks() async {
    String? token = await BrandPrefs.getToken();
    emit(SystemFeedbackLoading());

    final result = await _feedbackRepo.getAllSystemFeeds(token!);
    print(result);
    switch (result) {
      case Success():
        emit(SystemFeedbackSuccess(result.data));

        break;
      case Failure():
        emit(SystemFeedbackFailure(
            result.errorHandler.apiErrorModel.error!.message!));
    }

    // result.when(
    //   success: (feedbacks) {

    //   },
    //   failure: (error) {

    //   },
    // );
  }
}
