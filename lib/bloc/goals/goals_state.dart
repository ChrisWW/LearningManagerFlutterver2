part of 'goals_bloc.dart';

//TODO retro
abstract class GoalsState extends Equatable {
  const GoalsState();

  @override
  List<Object?> get props => [];
}

// przekazywanie jednego natenczas inspiracje
@immutable
class ShowGoalsState extends GoalsState {
  final Goals goals;

  const ShowGoalsState(this.goals);

  @override
  List<Object?> get props => [goals];
}

class ErrorGoalsState extends GoalsState {
  const ErrorGoalsState();
}