import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_response.dart';
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
  Future<void> postQuote() async {
    try {
      _inspirationRepository.postQuote();
      final inspirationResponse = InspirationResponse(
          quoteAuthor: "pozniej_autor", quoteText: "pozniej_text");
      emit(ShowInspirationState(inspirationResponse));
    }
    catch (e) {
      // TODO
    }
  }

  Future<void> getImage(String name) async {
    try {
      _inspirationRepository.getImage(name);
    }
    catch (e) {
      // TODO
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
// Future<void> fetchEntities() async {
//   try {
//     // mapowanie?
//     // EASY LOADING overlay
//     // dynamic res = jsonDecode(response.body);// owner = res["quoteAuthor"].toString().trim();// quote = res["quoteText"].toString().replaceAll("â", " ");// getImg(owner);
//
//     _inspirationRepository.postQuote();
//
//     // should get it from somewhere
//     final inspirationResponse = InspirationResponse(quoteAuthor: "pozniej_autor", quoteText: "pozniej_text");
//     emit(ShowInspirationState(inspirationResponse));
//
//     // get name?
//     _inspirationRepository.getImage("");
//   } catch (e) {
//     // Logger.d(':fetchEntities: error', e);
//
//     // TODO
//     // emit(const NetworkErrorState());
//   }

// TODO
//pobieranie obrazka losowego

// baza danych hydrated bloc/cubit

// kopiowanie w UI nie bloc

// udostepnianie, znalezc jak zrobic wyjscie na zewnetrzna/okno udostepniania

// obsluga ulubionych, cubit globalny
//cachowanie kolejka 10 wczesniej pobranych ostatni outuje i laduje na pierwszy, przesuwanie

