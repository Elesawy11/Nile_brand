import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopon_request_body.dart';
import 'package:nile_brand/features/Owner/cuopon/data/repo/cupons_repo.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/update_cupon/update_cupon_state.dart';
import '../../../../../../core/networking/api_result.dart';
import '../../../../owner_helpers.dart';

class UpdateCuponCubit extends Cubit<UpdateCuponState> {
  final CuponsRepo _cuponsRepo;
  UpdateCuponCubit(this._cuponsRepo) : super(InitialUpdateCuponState());

  final TextEditingController cuponName = TextEditingController();
  final TextEditingController discount = TextEditingController();
  final TextEditingController userEmai = TextEditingController();
  final TextEditingController cuponExpireDate = TextEditingController();

  Future<void> updateCupon(String id) async {
    String? token = await BrandPrefs.getToken();
    emit(UpdateCuponLoadingState());

    final response = await _cuponsRepo.updateCupon(
        id,
        CuponRequestBody(
            name: cuponName.text.trim(),
            expireTime: cuponExpireDate.text.trim(),
            discount: int.tryParse(discount.text.trim())),
        "Bearer ${token!}");

    switch (response) {
      case Success():
        print(response.data);

        emit(UpdateCuponSuccessState());
        break;
      case Failure():
        emit(UpdateCuponFailureState());
    }
  }
}
