part of 'user_account_bloc.dart';

abstract class UserAccountState extends Equatable {
  const UserAccountState();
  @override
  List<Object> get props => [];
}

@immutable
class UserLoggedInState extends UserAccountState {
  final UserProfile userProfile;

  const UserLoggedInState(this.userProfile);


  // po liscie propsow, bloc odroznia state od drugiego
  // nie jest triggerowany, gdy 2 takie same ewventy
  @override
  List<Object> get props => [userProfile];
}

@immutable
class UserLoggedOutState extends UserAccountState {
}

@immutable
class UserLoggingInProgressState extends UserAccountState {}

@immutable
class UserLogInErrorState extends UserAccountState {}