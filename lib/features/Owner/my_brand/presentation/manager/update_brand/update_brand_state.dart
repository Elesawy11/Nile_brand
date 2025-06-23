abstract class UpdateBrandState {}

class UpdateBrandInitial extends UpdateBrandState {}

class UpdateBrandLoading extends UpdateBrandState {}

class UpdateBrandSuccess extends UpdateBrandState {
  final DateTime timestamp;
  UpdateBrandSuccess(String string) : timestamp = DateTime.now();
}

class UpdateBrandFailure extends UpdateBrandState {
  final String message;
  UpdateBrandFailure(this.message);
}

class UpdateBrandDeleted extends UpdateBrandState {
  final String msg;

  UpdateBrandDeleted({required this.msg});
}

class LoadedOldInfo extends UpdateBrandState {}
