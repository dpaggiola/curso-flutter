import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  
  Future<UserCredential> signIn () async {
    GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication? gSA = await googleSignInAccount?.authentication;

    UserCredential user = await _auth.signInWithCredential(
        GoogleAuthProvider.credential(
          accessToken: gSA?.accessToken,
          idToken: gSA?.idToken,
        )
    );

    return user;
  }
}