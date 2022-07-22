import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../base/base_repository.dart';
import '../data/models/user_profile.dart';

class UserAccountRepository extends BaseRepository {

  UserAccountRepository(): super();

  Future<UserProfile> logInUser(String login, String password) async {
    // wywolanie konstruktora, jak w Javie
    // firebase
    // metody z googla
    // zwrocenie profile
    // mapowanie do swoich danych
    // ...
    //dynamic vs void

    await Future<void>.delayed(const Duration(seconds: 3));
    final UserProfile userProfile = UserProfile();
    return Future.value(userProfile);
  }

  Future<UserProfile> logInUserWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final UserCredential cr = await FirebaseAuth.instance.signInWithCredential(credential);
    final UserProfile userProfile = UserProfile(login: cr.user?.email.toString(), displayName: cr.user?.displayName.toString(), imageUrl: cr.user?.photoURL);
    return userProfile;

  }

  // TODO
  Future<void> logOutUser() async {
    return FirebaseAuth.instance.signOut();
  }
}