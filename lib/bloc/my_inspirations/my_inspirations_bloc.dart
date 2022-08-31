import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';
import 'package:flutter_production_boilerplate/repositories/my_inspirations_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'my_inspirations_event.dart';

part 'my_inspirations_state.dart';

class MyInspirationsBloc
    extends HydratedBloc<MyInspirationsEvent, MyInspirationsState> {
  static const String prefix = 'MyInspirationsBloc';
  static const String profileKey = 'myInspirations';

  final MyInspirationsRepository _myInspirationsRepository;



  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  MyInspirationsBloc(this._myInspirationsRepository)
      : super(ShowMyInspirationsDataState(Inspirations.empty()));

  Inspirations get inspirations {
    if (state is ShowMyInspirationsDataState) {
      return (state as ShowMyInspirationsDataState).inspirations;
    } else {
      return Inspirations.empty();
    }
  }

  @override
  Stream<MyInspirationsState> mapEventToState(
      MyInspirationsEvent event) async* {
    if (event is AddMyInspiration) {
      yield* _mapAddMyInspiration(event);
    } else {
      print("error other?");
    }
  }

  Stream<MyInspirationsState> _mapAddMyInspiration(AddMyInspiration event) async* {
    try {
      final Inspirations newInspirations = inspirations;
      final List<Inspiration> newList = [...inspirations.inspirations, event.inspiration];
      yield ShowMyInspirationsDataState(newInspirations.copyWith(inspirations: newList));
    } catch (e) {
      yield const ErrorMyInspirationsState();
    }
  }

  // Stream<ProfileState> _mapAddGoal(AddGoal event) async* {
  //   try {
  //     final Goals newGoals = goals;
  //     final List<Goal> newList = [...goals.goals, event.goal];
  //     yield ShowGoalsState(newGoals.copyWith(goals: newList));
  //   } catch (e) {
  //     yield const ErrorGoalsState();
  //   }
  // }

  @override
  MyInspirationsState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(profileKey)) {
      return ShowMyInspirationsDataState(
          Inspirations.fromJson(json[profileKey] as Map<String, dynamic>),
          );
    } else {
      return ShowMyInspirationsDataState(Inspirations.empty());
    }
  }

  // Kazdy obiekt w goalslist zostanie zrzucony do Jsona
  @override
  Map<String, dynamic>? toJson(MyInspirationsState state) {
    if (state is ShowMyInspirationsDataState) {
      return <String, dynamic>{};
    } else {
      return <String, dynamic>{};
    }
  }
}
