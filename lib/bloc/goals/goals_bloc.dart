import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/repositories/goals_repository.dart';
import 'package:flutter_production_boilerplate/utils/work_manager.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_event.dart';
part 'goals_state.dart';

class GoalsBloc extends HydratedBloc<GoalsEvent, GoalsState> {
  static const String prefix = 'GoalsBloc';
  static const String goalsKey = 'goals';

  final GoalsRepository _goalsRepository;

  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  GoalsBloc(this._goalsRepository) : super(ShowGoalsState(Goals.empty()));

  Goals get goals {
    if (state is ShowGoalsState) {
      return (state as ShowGoalsState).goals;
    } else {
      return Goals.empty();
    }
  }

  @override
  Stream<GoalsState> mapEventToState(GoalsEvent event) async* {
    if (event is AddGoal) {
      yield* _mapAddGoal(event);
    } else if (event is MarkGoalAsDone) {
      yield* _mapMarkGoalAsDone(event);
    }
  }

  Stream<GoalsState> _mapAddGoal(AddGoal event) async* {
    try {
      final Goals newGoals = goals;
      final List<Goal> newList = [...goals.goals, event.goal];

      MyWorkManager.registerPeriodicTask();

      yield ShowGoalsState(newGoals.copyWith(goals: newList));
    } catch (e) {
      yield const ErrorGoalsState();
    }
  }

  Stream<GoalsState> _mapMarkGoalAsDone(MarkGoalAsDone event) async* {
    try {
      final Goal goal = goals.goals.where((e) => e.id == event.goal.id).first;
      goal.isFinished = true;

      final bool isAnyGoalUnfinished = goals.goals.any((g) => !g.isFinished);

      if (!isAnyGoalUnfinished) {
        MyWorkManager.cancelAll();
      }

      yield ShowGoalsState(goals);
    } on StateError catch (_) {
      yield ShowGoalsState(goals);
    } catch (e) {
      yield const ErrorGoalsState();
    }
  }

  @override
  GoalsState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(goalsKey)) {
      return ShowGoalsState(
        Goals.fromJson(json[goalsKey] as Map<String, dynamic>),
      );
    } else {
      return ShowGoalsState(Goals.empty());
    }
  }

  // Kazdy obiekt w goalslist zostanie zrzucony do Jsona
  @override
  Map<String, dynamic>? toJson(GoalsState state) {
    if (state is ShowGoalsState) {
      return <String, dynamic>{
        goalsKey: state.goals.toJson(),
      };
    } else {
      return <String, dynamic>{};
    }
  }
}
