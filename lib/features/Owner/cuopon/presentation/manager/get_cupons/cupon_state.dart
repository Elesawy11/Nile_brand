import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';

abstract class ManageCuponState {}

class ManageInitialCuponState extends ManageCuponState {}

class ManageCuponLoadingState extends ManageCuponState {}

class SendCuponSucessState extends ManageCuponState {}

class GetAllCuponsState extends ManageCuponState {
  final List<CreateCuoponSuccess> myCupons;

  GetAllCuponsState({required this.myCupons});
}

class ManageCuponFailureState extends ManageCuponState {}

class DeleteCuponSucess extends ManageCuponState {}
