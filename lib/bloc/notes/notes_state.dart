part of 'notes_bloc.dart';

abstract class NotesState extends Equatable {
  const NotesState();

  @override
  List<Object?> get props => [];
}

// przekazywanie jednego natenczas inspiracje
@immutable
class ShowNotesState extends NotesState {
  final Notes notes;

  const ShowNotesState(this.notes);

  @override
  List<Object?> get props => [notes];
}

class ErrorNotesState extends NotesState {
  const ErrorNotesState();
}