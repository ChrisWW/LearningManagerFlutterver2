part of 'user_account_bloc.dart';

// Equatable bloc moze probowac np. 10x wpisac, nie duplikowac eventow, wyrzuci z kolejki
// abstrakcyjna klasa na eventy

abstract class UserAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TryToLogIn extends UserAccountEvent {

  TryToLogIn();

  @override
  List<Object?> get props => [];
}

class TryToLogOut extends UserAccountEvent {

  TryToLogOut();
}

class InjectLogIn extends UserAccountEvent {
  final UserProfile profile;

  InjectLogIn(this.profile);

  @override
  List<Object?> get props => [profile];
}