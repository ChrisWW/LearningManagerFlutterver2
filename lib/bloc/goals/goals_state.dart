part of 'goals_bloc.dart';

//TODO retro
abstract class GoalsState extends Equatable {
  const GoalsState();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

@immutable
class InitialGoalsState extends GoalsState {}

// przekazywanie jednego natenczas inspiracje
@immutable
class ShowGoalsState extends GoalsState {
  // final List<Goal> goalsList;
  final Goal goal;

  const ShowGoalsState(this.goal);

  @override
  List<Object?> get props => [goal];
}

class InProgressGoalsState extends GoalsState {
  const InProgressGoalsState();

}

class AddGoalState extends GoalsState {
  const AddGoalState();
}

class ErrorGoalsState extends GoalsState {
  const ErrorGoalsState();
}