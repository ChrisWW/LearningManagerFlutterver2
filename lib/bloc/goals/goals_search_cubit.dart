import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_search_state.dart';

// cubit bez eventów
class GoalsSearchCubit extends Cubit<GoalsSearchState> {
  static const String prefix = 'GoalsSearchCubit';

  final GoalsBloc _goalsBloc;

  GoalsSearchCubit(this._goalsBloc) : super(GoalsListState([]));

  factory GoalsSearchCubit.create(BuildContext context) {
    return GoalsSearchCubit(BlocProvider.of<GoalsBloc>(context));
  }

  // pobieramy cele ze stanu GoalState z bloca
  List<Goal> get goals {
    final GoalsState goalsState = _goalsBloc.state;
    if (goalsState is ShowGoalsState) {
      return (goalsState as ShowGoalsState).goals.goals;
    } else {
      return [];
    }
  }

  Future<void> initSearch() async {
    try {
      emit(GoalsListState(goals));
    } catch (e) {
      emit(GoalsListErrorState());
    }
  }

  Future<void> search(String query) async {
    try {
      final List<Goal> newGoals =
          goals.where((goal) => goal.goal.contains(query)).toList();
      emit(GoalsListState(newGoals));
    } catch (e) {
      emit(GoalsListErrorState());
    }
  }
}
