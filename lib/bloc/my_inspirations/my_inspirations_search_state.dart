part of 'my_inspirations_search_cubit.dart';

abstract class MyInspirationsSearchState extends Equatable {
  const MyInspirationsSearchState();

  @override
  List<Object?> get props => [];
}

@immutable
class MyInspirationsListState extends MyInspirationsSearchState {
  final List<Inspiration> inspirations;

  const MyInspirationsListState(this.inspirations);

  @override
  List<Object?> get props => [inspirations];
}

class MyInspirationsListErrorState extends MyInspirationsSearchState {
  const MyInspirationsListErrorState();
}