import 'dart:ffi';

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

  // TODO
  Future<void> logOutUser() async {
    // google polaczenie z api
    // logout
    return Future.value();
  }
}