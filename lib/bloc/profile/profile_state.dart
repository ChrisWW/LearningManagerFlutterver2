part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object?> get props => [];
}

@immutable
class InitialDataState extends ProfileState {
  const InitialDataState();
}

@immutable
class ShowDataState extends ProfileState {
  final Goals goals;
  final Inspirations inspirations;
  final Notes notes;

  const ShowDataState(this.goals, this.inspirations, this.notes);

  @override
  List<Object?> get props => [];
}

class ErrorDataState extends ProfileState {
  const ErrorDataState();
}
