import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/repositories/profile_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends HydratedBloc<ProfileEvent, ProfileState> {
  static const String prefix = 'ProfileBloc';
  static const String profileKey = 'profile';

  final ProfileRepository _profileRepository;

  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  ProfileBloc(this._profileRepository) : super(ShowDataState());

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is AddAllData) {
    } else {
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
  ProfileState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(profileKey)) {
      return ShowDataState(
        // Goals.fromJson(json[profileKey] as Map<String, dynamic>),
      );
    } else {
      return ShowDataState();
    }
  }

  // Kazdy obiekt w goalslist zostanie zrzucony do Jsona
  @override
  Map<String, dynamic>? toJson(ProfileState state) {
    if (state is ShowDataState) {
      return <String, dynamic>{
        // profileKey: state.goals.toJson(),
      };
    } else {
      return <String, dynamic>{};
    }
  }
}
