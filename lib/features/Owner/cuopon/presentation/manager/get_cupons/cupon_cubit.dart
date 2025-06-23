import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';

import 'package:nile_brand/features/Owner/cuopon/data/repo/cupons_repo.dart';
import 'package:nile_brand/features/Owner/cuopon/presentation/manager/get_cupons/cupon_state.dart';

import '../../../../../../core/networking/api_result.dart';
import '../../../../owner_helpers.dart';

class GetCuponsCubit extends Cubit<ManageCuponState> {
  final CuponsRepo _cuponsRepo;
  GetCuponsCubit(this._cuponsRepo) : super(ManageInitialCuponState());

  final TextEditingController cuponName = TextEditingController();
  final TextEditingController cuponExpireDate = TextEditingController();
  final TextEditingController discount = TextEditingController();
  final TextEditingController userEmai = TextEditingController();

  List<CreateCuoponSuccess> myCupons = [];

  Future<void> getAllCupons() async {
    String? token = await BrandPrefs.getToken();

    final response = await _cuponsRepo.getAllCupons("Bearer ${token!}");

    String? ownerId = await BrandPrefs.getOwnerId();
    emit(ManageCuponLoadingState());
    print(response);

    switch (response) {
      case Success():
        print(response.data);
        if (myCupons.isNotEmpty) {
          myCupons.clear();
        }
        myCupons.addAll(response.data);
        // for (CreateCuoponSuccess cupon in response.data) {
        //   if (cupon.owner == ownerId ) {
        //     myCupons.add(cupon);
        //   }
        // }
        emit(GetAllCuponsState(myCupons: myCupons));
        break;
      case Failure():
        emit(ManageCuponFailureState());
    }
  }

  Future<void> deleteCupon(String id) async {
    emit(ManageInitialCuponState());
    String? token = await BrandPrefs.getToken();

    final response = await _cuponsRepo.deleteCupon(id, "Bearer ${token!}");

    switch (response) {
      case Success():
        print(response.data);

        emit(DeleteCuponSucess());

        await getAllCupons();

        break;
      case Failure():
        emit(ManageCuponFailureState());
    }
  }

  Future<void> sendCupon(String id) async {
    emit(ManageCuponLoadingState());
    String? token = await BrandPrefs.getToken();

    final response = await _cuponsRepo.sendCupons(id, "Bearer ${token!}");

    switch (response) {
      case Success():
        print(response.data);
        emit(DeleteCuponSucess());
        break;
      case Failure():
        emit(ManageCuponFailureState());
    }
  }
}
