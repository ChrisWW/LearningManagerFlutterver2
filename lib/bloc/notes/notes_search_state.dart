part of 'notes_search_cubit.dart';

abstract class NotesSearchState extends Equatable {
  const NotesSearchState();

  @override
  List<Object?> get props => [];
}

@immutable
class NotesListState extends NotesSearchState {
  final List<Note> notes;

  const NotesListState(this.notes);

  @override
  List<Object?> get props => [notes];
}

class NotesListErrorState extends NotesSearchState {
  const NotesListErrorState();
}