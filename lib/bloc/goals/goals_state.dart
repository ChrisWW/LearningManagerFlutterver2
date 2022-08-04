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
  final List<Goal> goalsList;
  // final Goal goal;

  const ShowGoalsState(this.goalsList);

  @override
  List<Object?> get props => [goalsList];
}

class ErrorGoalsState extends GoalsState {
  const ErrorGoalsState();
}