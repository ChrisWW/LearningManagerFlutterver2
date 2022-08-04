import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/repositories/goals_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'goals_event.dart';
part 'goals_state.dart';

class GoalsBloc extends HydratedBloc<GoalsEvent, GoalsState> {
  static const String prefix = 'GoalsBloc';
  static const String goalsKey = 'goals';

  final GoalsRepository _goalsRepository;

  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  GoalsBloc(this._goalsRepository) : super(const ShowGoalsState([]));

  @override
  GoalsState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(goalsKey)) {
      final List<String> dataList = json[goalsKey] as List<String>;

      return ShowGoalsState(
          dataList.map((String e) => Goal.fromJson(e)).toList()
      );
    } else {
      return InitialGoalsState();
    }
  }


  // Kazdy obiekt w goalslist zostanie zrzucony do Jsona
  @override
  Map<String, dynamic>? toJson(GoalsState state) {
    if (state is ShowGoalsState) {
      return <String, dynamic>{
        goalsKey: state.goalsList.map((e) => e.toJson()).toList(),
      };
    } else {
      return <String, dynamic>{};
    }
  }

  @override
  Stream<GoalsState> mapEventToState(GoalsEvent event) async* {
    if (event is SetGoals) {
      yield* _mapTryToSetGoals(event);
    } else if (event is AddGoal) {
      yield* _mapTryToAddGoal(event);
    }
  }

  Stream<GoalsState> _mapTryToSetGoals(SetGoals event) async* {
    try {
      yield InitialGoalsState();

      yield InProgressGoalsState();

      final myListGoals = await _goalsRepository.loadGoalsData();
      // it should be list??
      yield ShowGoalsState(myListGoals);
    } catch(e) {
      yield ErrorGoalsState();
    }
  }

  Stream<GoalsState> _mapTryToAddGoal(AddGoal event) async* {
    try {
      yield AddGoalState();
      // Future ktory dodaje dane do bazy danych

      yield InProgressGoalsState();
      // // it should be list??
      // yield ShowGoalsState(myListGoals);
    } catch(e) {
      yield ErrorGoalsState();
    }
  }
}
