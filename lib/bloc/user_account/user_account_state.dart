part of 'user_account_bloc.dart';

import 'package:equatable/equatable.dart';

abstract class UserAccountState extends Equatable {
  const UserAccountState();
  @override
  List<Object> get props => [];
}

@immutable
class UserLoggedInState extends UserAccountState {
  final UserProfile = profile;

  const UserLoggedInState(this.profile);

  @override
  List<Object?> get props => [profile];
}

@immutable
class UserLoggedOutState extends UserAccountState {
}

@immutable
class UserLoggingInProgressState extends UserAccountState {}

@immutable
class UserLogInErrorState extends UserAccountState {}