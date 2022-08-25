part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

@immutable
class ShowDataState extends ProfileState {
  const ShowDataState();

  @override
  List<Object?> get props => [];
}

class ErrorGoalsState extends ProfileState {
  const ErrorGoalsState();
}
