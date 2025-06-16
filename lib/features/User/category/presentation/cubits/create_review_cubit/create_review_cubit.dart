import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nile_brand/core/networking/api_result.dart';
import 'package:nile_brand/features/User/category/data/repo/sub_category_repo_impl.dart';

import 'create_review_state.dart';

class CreateReviewCubit extends Cubit<CreateReviewState> {
  CreateReviewCubit(this._repo) : super(const CreateReviewState.initial());
  final SubCategoryRepoImpl _repo;
  final TextEditingController reviewController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> createReview({required String id}) async {
    emit(const CreateReviewState.createReivewLoading());

    final response = await _repo.createReview(id: id, body: {
      'comment': reviewController.text,
      'rating': 4,
    });

    switch (response) {
      case Success():
        emit(const CreateReviewState.createReivewSuccess());
      case Failure():
        emit(
          CreateReviewState.createReivewError(
            error: response.errorHandler.apiErrorModel.error?.message ??
                'unKnown error',
          ),
        );
    }
  }
}
