import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/user_profile.dart';
import 'package:flutter_production_boilerplate/repositories/user_account_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'user_account_event.dart';

part 'user_account_state.dart';

class UserAccountBloc extends HydratedBloc<UserAccountEvent, UserAccountState> {
  static const String prefix = 'UserAccountBloc';
  static const String profileKey = 'profile';

  // wstrzykujemy reposytoria, z ktorych korzysta kazdy bloc (w global providers)
  // kazdy blok jest w jakims stanie stworzony,
  // stan inicjalny
  // kazdy blok ma eventy
  final UserAccountRepository _userAccountRepository;

  UserAccountBloc(this._userAccountRepository) : super(UserLoggedOutState());


  // First create states TODO
  // UserProfile? get profile =>
  //     state is UserLoggedInState ? (state as UserLoggedInState).profile : null;
  //
  // String get login -> state is UserLoggedInState
  // ? (state as UserLoggedInState).profile.login
  // : '';
  //
  // bool itSelf(String login) => state is UserLoggedInState
  //     ? (state as UserLoggedInState).profile.login == login
  // : false;

// stan to jest to w czym bloc sie znajduje, a
  // eventy to w czym porusza ten bloc, zmuszasz go do zmiany stanu

  @override
  Stream<UserAccountState> mapEventToState(UserAccountEvent event) async* {
    if (event is TryToLogIn) {
      yield* _mapTryToLogIn(event);
    } else if (event is TryToLogOut) {
      yield* _mapTryToLogOut(event);
    }
  }

  // Na ekranie logowanie wywolywany jest _mapTryToLogin
  Stream<UserAccountState> _mapTryToLogIn(TryToLogIn event) async* {
    try {
      // zaczynamy logowanie
      yield UserLoggingInProgressState();

      /// TODO:
      /// // zmusamy repo, zeby zalogowalo usera
      /// // zapytanie do API
      final UserProfile profile = await _userAccountRepository.logInUser(
          event.login,
          event.password
      );

      // natenczas zmockowana logika
      // if accept
      // yield przechodzimy w inny stan(State)
      // mock hardcoded
      if (event.login == 'test') {
        yield UserLoggedInState(profile);
      } else {
        throw Exception('random error');
      }
    } catch (e) {
      print('$prefix:_mapTryToLogIn: error ${e.toString()}');
      yield UserLogInErrorState();
    }
  }

// stany do dokonczenia // TODO
  Stream<UserAccountState> _mapTryToLogOut(TryToLogOut event) async* {
    try {
      // zaczynamy wylogowanie
      // yield ustanawia Ci stan bloku
      // await unwrapuje wartosc z future'a
      // bez awaita future void
      await _userAccountRepository.logOutUser();
      yield UserLoggedOutState();
    } catch (e) {
      print('$prefix: mapTryToLogOut: error ${e.toString()}');
      yield UserLogInErrorState();
    }
  }

  // from json deserializowac
  @override
  UserAccountState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(profileKey)) {
      return UserLoggedInState(UserProfile.fromJson(json[profileKey] as Map<String, dynamic>));
    } else {
      return UserLoggedOutState();
    }
  }

  // serializacja obiektu mojego stanu, a from
  // przy zamykaniu apki
  // lokalny stan-> za kazdym raezm przepada po zniszczeniu
  // tuz przed smiercia apki zapisac testament (stan) i odtwarzamy stan
  // TO json a odpalamy apke znowu fromJson
  @override
  Map<String, dynamic>? toJson(UserAccountState state) {
    if (state is UserLoggedInState) {
      return <String, dynamic>{
        profileKey: state.userProfile.toJson()};
    } else {
      return <String, dynamic>{};
    }
  }
}

// \/ funkcja sluzyla do rejestracji, wstrzykiwanie stanu do rejestracji
// Stream<UserAccountState> _mapInjectLogIn(InjectLogIn event) async* {
//   yield UserLoggedInState(event.profile);
// }
// TODO
// jeden na bloc, drugi na zdefiniowane eventy, trzeci na zdefiniowane stany
// najpierw event.