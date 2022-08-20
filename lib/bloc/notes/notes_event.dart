part of 'notes_bloc.dart';

abstract class NotesEvent extends Equatable {
  const NotesEvent();

  @override
  List<Object?> get props => [];
}

class AddNote extends NotesEvent {
  final Note note;

  const AddNote(this.note);

  @override
  List<Object?> get props => [note];
}