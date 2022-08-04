part of 'goals_bloc.dart';

abstract class GoalsEvent extends Equatable {
  const GoalsEvent();

  @override
  List<Object?> get props => [];
}

class AddGoal extends GoalsEvent {
  final Goal goal;

  const AddGoal(this.goal);

  @override
  List<Object?> get props => [goal];
}

class MarkGoalAsDone extends GoalsEvent {
  final Goal goal;

  const MarkGoalAsDone(this.goal);

  @override
  List<Object?> get props => [goal];
}