part of 'my_inspirations_bloc.dart';

abstract class MyInspirationsState extends Equatable {
  const MyInspirationsState();

  @override
  List<Object?> get props => [];
}

@immutable
class ShowMyInspirationsDataState extends MyInspirationsState {
  final Inspirations inspirations;

  const ShowMyInspirationsDataState(this.inspirations);

  @override
  List<Object?> get props => [inspirations];
}

class ErrorMyInspirationsState extends MyInspirationsState {
  const ErrorMyInspirationsState();
}