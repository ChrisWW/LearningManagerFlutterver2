part of 'inspiration_bloc.dart';

//TODO retro
abstract class InspirationState extends Equatable {
  const InspirationState();


}

@immutable
class TestState extends InspirationState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}