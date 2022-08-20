import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part '../../bloc/notes/notes_search_state.dart';

// cubit bez eventów
class NotesSearchCubit extends Cubit<NotesSearchState> {
  static const String prefix = 'GoalsSearchCubit';

  final NotesBloc _notesBloc;

  NotesSearchCubit(this._notesBloc) : super(NotesListState([]));
  factory NotesSearchCubit.create(BuildContext context) {
    return NotesSearchCubit(BlocProvider.of<NotesBloc>(context));
  }

  // pobieramy cele ze stanu GoalState z bloca
  List<Note> get notes {
    final NotesState notesState = _notesBloc.state;
    if (notesState is ShowNotesState) {
      return (notesState as ShowNotesState).notes.notes;
    } else {
      return [];
    }
  }

  Future<void> initSearch() async {
    try {
      emit(NotesListState(notes));
    } catch (e) {
      emit(NotesListErrorState());
    }
  }

  Future<void> search(String query) async {
    try {
      final List<Note> newNotes =
      notes.where((note) => note.title.contains(query) || note.content.contains(query)).toList();
      emit(NotesListState(newNotes));
    } catch (e) {
      emit(NotesListErrorState());
    }
  }
}
