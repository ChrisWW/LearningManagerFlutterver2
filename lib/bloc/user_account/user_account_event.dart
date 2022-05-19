part of 'user_account_bloc.dart';

import 'package:equatable/equatable.dart';

// Equatable bloc moze probowac np. 10x wpisac, nie duplikowac eventow, wyrzuci z kolejki
// abstrakcyjna klasa na eventy

abstract class UserAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TryToLogIn extends UserAccountEvent {
  final String login;
  final String password;

  TryToLogIn(this.login, this.password);

  @override
  List<Object?> get props => [login, password];
}

class TryToLogOut extends UserAccountEvent {}

class InjectLogIn extends UserAccountEvent {
  final UserProfile profile;

  InjectLogIn(this.profile);

  @override
  List<Object?> get props => [profile];
}