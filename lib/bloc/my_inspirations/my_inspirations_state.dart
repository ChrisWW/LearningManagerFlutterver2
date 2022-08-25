part of 'my_inspirations_bloc.dart';

abstract class MyInspirationsState extends Equatable {
  const MyInspirationsState();

  @override
  List<Object?> get props => [];
}

@immutable
class ShowMyInspirationsDataState extends MyInspirationsState {

  const ShowMyInspirationsDataState();

  @override
  List<Object?> get props => [];
}

class ErrorMyInspirationsState extends MyInspirationsState {
  const ErrorMyInspirationsState();
}