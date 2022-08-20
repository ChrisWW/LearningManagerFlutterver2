import 'package:flutter/foundation.dart';
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

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}