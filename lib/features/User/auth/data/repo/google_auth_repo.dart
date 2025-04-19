import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthRepo {
  final FirebaseAuth _auth;
  final GoogleSignIn _googleSignIn;

  GoogleAuthRepo(this._auth, this._googleSignIn);
  Future<User?> signInWithGoogle() async {
    try {
      /// Sign in with Google
      final GoogleSignInAccount? googleAccount = await _googleSignIn.signIn();

      if (googleAccount == null) return null;
      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleAccount.authentication;
      // Create a new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      // This token is used to authenticate the user with Firebase
      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw Exception('exception from google auth ${e.message}');
    }
  }

  // for sign out
  Future<void> signOut() async {
    try {
      await Future.wait([
        _googleSignIn.signOut(),
        _auth.signOut(),
      ]);
    } catch (e) {
      throw Exception('Failed to sign out: ${e.toString()}');
    }
  }
}
