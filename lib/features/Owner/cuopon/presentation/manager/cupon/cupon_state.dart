import 'package:nile_brand/features/Owner/cuopon/data/model/create_cuopin_success.dart';


abstract class CuponState {}

class InitialCuponState extends CuponState {}

class CreateCuponLoadingState extends CuponState{}

class CreateCuponSucessState extends CuponState {
  final CreateCuoponSuccess cupon;

  CreateCuponSucessState({required this.cupon});
}

class CreateCuponFailureState extends CuponState{}


class DeleteCuponSucess extends CuponState{}




