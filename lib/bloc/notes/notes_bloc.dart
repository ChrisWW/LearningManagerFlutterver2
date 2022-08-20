import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/repositories/notes_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'notes_event.dart';
part 'notes_state.dart';

class NotesBloc extends HydratedBloc<NotesEvent, NotesState> {
  static const String prefix = 'NotesBloc';
  static const String notesKey = 'notes';

  final NotesRepository _notesRepository;

  // user uruchomi poraz pierwszy apke to zainicjalizuje pusta tablice
  NotesBloc(this._notesRepository) : super(ShowNotesState(Notes.empty()));

  Notes get notes {
    if (state is ShowNotesState) {
      return (state as ShowNotesState).notes;
    } else {
      return Notes.empty();
    }
  }

  @override
  Stream<NotesState> mapEventToState(NotesEvent event) async* {
    if (event is AddNote) {
      yield* _mapAddNote(event);
    } else  {
      print("Else in MapEventToState");
    }
  }

  Stream<NotesState> _mapAddNote(AddNote event) async* {
    try {
      final Notes newNotes = notes;
      final List<Note> newList = [...notes.notes, event.note];
      yield ShowNotesState(newNotes.copyWith(notes: newList));
    } catch (e) {
      yield const ErrorNotesState();
    }
  }

  @override
  NotesState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(notesKey)) {
      return ShowNotesState(
        Notes.fromJson(json[notesKey] as Map<String, dynamic>),
      );
    } else {
      return ShowNotesState(Notes.empty());
    }
  }

  // Kazdy obiekt w goalslist zostanie zrzucony do Jsona
  @override
  Map<String, dynamic>? toJson(NotesState state) {
    if (state is ShowNotesState) {
      return <String, dynamic>{
        notesKey: state.notes.toJson(),
      };
    } else {
      return <String, dynamic>{};
    }
  }
}
