import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/api_result.dart';

import '../../../data/repo_impl/my_profile_repo_impl.dart';
import 'add_feedback_state.dart';

class AddFeedbackCubit extends Cubit<AddFeedbackState> {
  AddFeedbackCubit(this._repo) : super(const AddFeedbackState.initial());
  final TextEditingController commentController = TextEditingController();
  final TextEditingController? reatingController = TextEditingController();

  final MyProfileRepoImpl _repo;
  Future<void> addFeedback() async {
    emit(const AddFeedbackState.addFeedbackLoading());
    final response = await _repo.addFeedBack(
        comment: commentController.text.trim(),
        rating: int.parse(reatingController?.text.substring(0, 1) ?? '0'));

    switch (response) {
      case Success():
        emit(AddFeedbackState.addFeedbackSuccess(feedback: response.data));

        break;
      case Failure():
        emit(AddFeedbackState.addFeedbackError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                "Unknown error"));
      default:
    }
  }
}
