part of 'my_inspirations_bloc.dart';

abstract class MyInspirationsEvent extends Equatable {
  const MyInspirationsEvent();

  @override
  List<Object?> get props => [];
}

class AddMyInspiration extends MyInspirationsEvent {
  final Inspiration inspiration;
  const AddMyInspiration(this.inspiration);

  @override
  List<Object?> get props => [];
}

class AddMyImage extends MyInspirationsEvent {
  final String imageUrl;
  const AddMyImage(this.imageUrl);

  @override
  List<Object?> get props => [];
}