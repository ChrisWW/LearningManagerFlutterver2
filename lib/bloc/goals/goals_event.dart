part of 'goals_bloc.dart';

abstract class GoalsEvent extends Equatable {

}

class SetGoals extends GoalsEvent {
  SetGoals();

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

class AddGoal extends GoalsEvent {
  AddGoal();

  @override
  List<Object?> get props => [];

}