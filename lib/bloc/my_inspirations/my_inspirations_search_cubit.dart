import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';

part 'my_inspirations_search_state.dart';

// cubit bez eventów
class MyInspirationsSearchCubit extends Cubit<MyInspirationsSearchState> {
  static const String prefix = 'GoalsSearchCubit';

  final MyInspirationsBloc _myInspirationsBloc;

  MyInspirationsSearchCubit(this._myInspirationsBloc) : super(MyInspirationsListState([]));
  factory MyInspirationsSearchCubit.create(BuildContext context) {
    return MyInspirationsSearchCubit(BlocProvider.of<MyInspirationsBloc>(context));
  }

  // pobieramy cele ze stanu GoalState z bloca
  List<Inspiration> get inspirations {
    final MyInspirationsState myInspirationsState = _myInspirationsBloc.state;
    if (myInspirationsState is ShowMyInspirationsDataState) {
      return (myInspirationsState as ShowMyInspirationsDataState).inspirations.inspirations;
    } else {
      return [];
    }
  }

  Future<void> initSearch() async {
    try {
      emit(MyInspirationsListState(inspirations));
    } catch (e) {
      emit(MyInspirationsListErrorState());
    }
  }

  Future<void> search(String query) async {
    try {
      final List<Inspiration> newInspirations =
      inspirations.where((inspiration) => inspiration.title.contains(query) || inspiration.description.contains(query) || inspiration.quote.contains(query) || inspiration.authorQuote.contains(query)).toList();
      emit(MyInspirationsListState(newInspirations));
    } catch (e) {
      emit(MyInspirationsListErrorState());
    }
  }
}
