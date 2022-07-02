import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_response.dart';
import 'package:flutter_production_boilerplate/data/remote/wikipedia_page_response.dart';
import 'package:flutter_production_boilerplate/repositories/inspiration_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'inspiration_state.dart';

class InspirationCubit extends HydratedCubit<InspirationState> {
  final InspirationRepository _inspirationRepository;

  InspirationCubit(this._inspirationRepository)
      : super(InitialInspirationState());

  // TODO retrofit flutter with bloc
  // TODO retorfit-> service ktory bedzie tworyzl te 2 zapytania i przkeaze link do obrazka do stanu i inspiracja
  // wyciaganie danych z responsa// service w retrofit i obiekt modelu, ktory freezed biblioteka do serializacji,// obiekt i wyciagae zmienna// przekazac zawartosc do UI
  Future<void> getInspiration() async {
    try {
      emit(const InProgressInspirationState());
      final InspirationResponse inspirationResponse = await _inspirationRepository.postQuote();
      final WikipediaPageResponse wikipediaPageResponse = await _inspirationRepository.getImage(inspirationResponse.quoteAuthor);
      final String imageUrl = wikipediaPageResponse.query!.pages.entries.first.value.thumbnail!.source;
      emit(ShowInspirationState(inspirationResponse, imageUrl));
    }
    catch (e) {
      emit(const ErrorInspirationState());
      print(e.toString());
      print("Error in PostQuote InspirationCubit");
    }
  }

  @override
  InspirationState? fromJson(Map<String, dynamic> json) {
    return InitialInspirationState();
  }

  @override
  Map<String, dynamic>? toJson(InspirationState state) {
    return <String, dynamic>{};
  }
}

// TODO
//pobieranie obrazka losowego

// baza danych hydrated bloc/cubit

// kopiowanie w UI nie bloc

// udostepnianie, znalezc jak zrobic wyjscie na zewnetrzna/okno udostepniania

// obsluga ulubionych, cubit globalny
//cachowanie kolejka 10 wczesniej pobranych ostatni outuje i laduje na pierwszy, przesuwanie

