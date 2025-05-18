import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopon_request_body.dart';
import 'package:nile_brand/features/Owner/cuopon/data/repo/cupons_repo.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/cupon/cupon_state.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../owner_helpers.dart';

class CuponCubit extends Cubit<CuponState> {
  final CuponsRepo _cuponsRepo;
  CuponCubit(this._cuponsRepo) : super(InitialCuponState());

  final TextEditingController cuponName = TextEditingController();
  final TextEditingController cuponExpireDate = TextEditingController();
  final TextEditingController discount = TextEditingController();

  Future<void> createCupon() async {
    emit(CreateCuponLoadingState());

    final response = await _cuponsRepo.createCupon(CuponRequestBody(
        name: cuponName.text,
        expireTime: cuponExpireDate.text,
        discount: int.parse(discount.text.trim())));

    switch (response) {
      case Success():
        print(response.data);
        await BrandStorage.saveCoupons([response.data]);
        emit(CreateCuponSucessState(cupon: response.data));

        break;
      case Failure():
        emit(CreateCuponFailureState());
    }
  }

  Future<void> deleteCupon(String id) async {
    emit(CreateCuponLoadingState());

    final response = await _cuponsRepo.deleteCupon(id);

    switch (response) {
      case Success():
        print(response.data);

        emit(DeleteCuponSucess());

        break;
      case Failure():
        emit(CreateCuponFailureState());
    }
  }
}
