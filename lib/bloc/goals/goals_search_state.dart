part of 'goals_search_cubit.dart';

abstract class GoalsSearchState extends Equatable {
  const GoalsSearchState();

  @override
  List<Object?> get props => [];
}

@immutable
class GoalsListState extends GoalsSearchState {
  final List<Goal> goals;

  const GoalsListState(this.goals);

  @override
  List<Object?> get props => [goals];
}

class GoalsListErrorState extends GoalsSearchState {
  const GoalsListErrorState();
}