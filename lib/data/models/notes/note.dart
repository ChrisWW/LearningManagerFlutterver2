import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/ui/screens/notes/add_edit_note_screen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';
part 'note.g.dart';

@freezed
class Notes with _$Notes {
  factory Notes({
    @Default(<Note>[]) List<Note> notes,
  }) = _Notes;

  Notes._();

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);

  static Notes empty() => Notes(notes: <Note>[]);
}

@unfreezed
class Note with _$Note {
  factory Note({
    @Default('') final String id,
    @Default('') String title,
    @Default('') String content,
    @Default('') String date,
    @Default(-1) int color,
  }) = _Note;

  // trick do freezed, zeby generator akceptowal funkcje
  // freezed ma taka mozliwosc, zeby zaakceptowac customowe funkcje w klasie

  Note._();
  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);

  static Note empty() => Note(date: "", title: '', content: '', color: NoteColor.white.index);

  NoteColor get noteColor => NoteColor.values[color];

  Color get uiColor => noteColor.mapToColor();

  static NoteColor indexToNoteColor(int index) => NoteColor.values[index];
}