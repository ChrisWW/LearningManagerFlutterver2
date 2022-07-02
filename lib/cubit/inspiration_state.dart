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
  final InspirationResponse inspiration;
  final String imageUrl;

  const ShowInspirationState(this.inspiration, this.imageUrl);

  @override
  List<Object?> get props => [inspiration];
}

class InProgressInspirationState extends InspirationState {
  const InProgressInspirationState();
}

class ErrorInspirationState extends InspirationState {
  const ErrorInspirationState();
}



//przekzywanie 10?

