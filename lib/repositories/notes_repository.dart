
import 'package:flutter_production_boilerplate/base/base_repository.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';

class NotesRepository extends BaseRepository {

  NotesRepository() : super();

  Future<Note> loadNotesData() async {
    final Note note = Note();
    return note;
  }

  Future<Note> addNote() async {
    final Note note = Note();
    return note;
  }
}