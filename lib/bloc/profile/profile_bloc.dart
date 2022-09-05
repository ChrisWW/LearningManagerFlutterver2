import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  static const String prefix = 'ProfileBloc';
  static const String profileKey = 'profile';

  final ProfileRepository _profileRepository;
  final GoalsBloc _goalsBloc;

  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  ProfileBloc(
    this._profileRepository,
    this._goalsBloc,
  ) : super(const InitialDataState());

  factory ProfileBloc.create(BuildContext context) {
    return ProfileBloc(
      RepositoryProvider.of<ProfileRepository>(context),
      BlocProvider.of<GoalsBloc>(context),
    );
  }

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    if (event is GetDataEvent) {
      yield* _mapGetData(event);
    }
  }

  Stream<ProfileState> _mapGetData(GetDataEvent event) async* {
    try {
      final Goals goals = _goalsBloc.goals;
      yield ShowDataState(goals);
    } catch (e) {
      yield const ErrorDataState();
    }
  }
}
