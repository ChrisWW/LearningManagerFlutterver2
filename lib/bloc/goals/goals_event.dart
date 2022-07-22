part of 'goals_bloc.dart';

abstract class GoalsEvent extends Equatable {

}

class SetGoal extends GoalsEvent {
  SetGoal();

  @override
  List<Object?> get props => [];
}

class MarkGoalAsDone extends GoalsEvent {
  MarkGoalAsDone();

  @override
  List<Object?> get props => [];
}

class SearchForGoal extends GoalsEvent {
  SearchForGoal();

  @override
  List<Object?> get props => [];
}