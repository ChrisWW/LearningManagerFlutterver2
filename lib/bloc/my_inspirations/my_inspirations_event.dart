part of 'my_inspirations_bloc.dart';

abstract class MyInspirationsEvent extends Equatable {
  const MyInspirationsEvent();

  @override
  List<Object?> get props => [];
}

class AddMyInspiration extends MyInspirationsEvent {

  const AddMyInspiration();

  @override
  List<Object?> get props => [];
}

class AddMyImage extends MyInspirationsEvent {

  const AddMyImage();

  @override
  List<Object?> get props => [];
}
