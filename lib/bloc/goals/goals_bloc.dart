import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/Goal.dart';
import 'package:flutter_production_boilerplate/repositories/goals_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_event.dart';
part 'goals_state.dart';

class GoalsBloc extends HydratedBloc<GoalsEvent, GoalsState> {
  static const String prefix = 'GoalsBloc';
  static const String goalsKey = 'goals';

  final GoalsRepository _goalsRepository;

  GoalsBloc(this._goalsRepository) : super(InitialGoalsState());

  @override
  GoalsState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(goalsKey)) {
      return ShowGoalsState(
        Goal.fromJson(
          json[goalsKey] as Map<String, dynamic>,
        ),
        // here element GOAL? TODO
      );
    } else {
      return InitialGoalsState();
    }
  }

  @override
  Map<String, dynamic>? toJson(GoalsState state) {
    if (state is ShowGoalsState) {
      return <String, dynamic>{
        goalsKey: state.goal.toJson(),
      };
    } else {
      return <String, dynamic>{};
    }
  }

  @override
  Stream<GoalsState> mapEventToState(GoalsEvent event) async* {
    if (event is SetGoal) {

    }
  }
}
