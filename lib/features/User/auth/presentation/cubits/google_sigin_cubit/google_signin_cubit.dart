import 'package:bloc/bloc.dart';
import 'package:nile_brand/features/User/auth/data/repo/google_auth_repo.dart';
import 'google_signin_state.dart';

class GoogleSigninCubit extends Cubit<GoogleSigninState> {
  GoogleSigninCubit(this._firebaseAuthServices)
      : super(GoogleSigninState.initial());

  final GoogleAuthRepo _firebaseAuthServices;

  Future<void> emitSignInWithGoogle() async {
    emit(GoogleSigninState.googleLoading());
    try {
      final response = await _firebaseAuthServices.signInWithGoogle();
      if (response != null) {
        emit(GoogleSigninState.googleSuccess(user: response));
      } else {
        emit(GoogleSigninState.googleError(error: "Google sign-in failed"));
      }
    } catch (e) {
      emit(GoogleSigninState.googleError(error: e.toString()));
    }
  }
}
