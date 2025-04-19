import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/User/auth/data/repo/google_auth_repo.dart';
import 'google_sign_out_state.dart';

class GoogleSignOutCubit extends Cubit<GoogleSignOutState> {
  GoogleSignOutCubit(this._googleAuthRepo)
      : super(GoogleSignOutState.initial());

  final GoogleAuthRepo _googleAuthRepo;
  Future<void> emitSignOut() async {
    emit(GoogleSignOutState.signoutLoading());
    try {
      await _googleAuthRepo.signOut();
      emit(GoogleSignOutState.signoutSuccess());
    } catch (e) {
      emit(GoogleSignOutState.signoutError(error: e.toString()));
    }
  }
}
