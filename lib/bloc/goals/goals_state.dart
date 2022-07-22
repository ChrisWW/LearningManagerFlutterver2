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
  final Goal goal;

  const ShowGoalsState(this.goal);

  @override
  List<Object?> get props => [goal];
}

class InProgressGoalsState extends GoalsState {
  const InProgressGoalsState();

}

class ErrorGoalsState extends GoalsState {
  const ErrorGoalsState();

}