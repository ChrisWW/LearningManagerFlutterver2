part of 'inspiration_cubit.dart';

@immutable
class InspirationState extends Equatable {

  const InspirationState();

  @override
  List<Object?> get props => [];
}

@immutable
class InitialInspirationState extends InspirationState {}


// przekazywanie jednego natenczas inspiracje
@immutable
class ShowInspirationState extends InspirationState {
  final Inspiration inspiration;

  const ShowInspirationState(this.inspiration);

  @override
  List<Object?> get props => [inspiration];
}



//przekzywanie 10?

