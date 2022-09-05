import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/repositories/profile_repository.dart';
import 'package:equatable/equatable.dart';

part 'profile_event.dart';

part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  static const String prefix = 'ProfileBloc';
  static const String profileKey = 'profile';

  final ProfileRepository _profileRepository;
  final GoalsBloc _goalsBloc;
  final MyInspirationsBloc _inspirationsBloc;
  final NotesBloc _notesBloc;

  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  ProfileBloc(
    this._profileRepository,
    this._goalsBloc,
    this._inspirationsBloc,
    this._notesBloc,
  ) : super(const InitialDataState());

  factory ProfileBloc.create(BuildContext context) {
    return ProfileBloc(
      RepositoryProvider.of<ProfileRepository>(context),
      BlocProvider.of<GoalsBloc>(context),
      BlocProvider.of<MyInspirationsBloc>(context),
      BlocProvider.of<NotesBloc>(context),
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
      final Notes notes = _notesBloc.notes;
      final Inspirations inspirations = _inspirationsBloc.inspirations;
      yield ShowDataState(goals, inspirations, notes);
    } catch (e) {
      yield const ErrorDataState();
    }
  }
}
