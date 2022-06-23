import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_response.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:http/http.dart' as http;
part 'inspiration_state.dart';

// cubit zainicjalizowany
class InspirationCubit extends HydratedCubit<InspirationState> {
  InspirationCubit() : super(InitialInspirationState());


  // TODO retrofit flutter with bloc
  Future<void> fetchEntities() async {
    try {
      dynamic response = await http.post(
          Uri.parse(Uri.encodeFull('http://api.forismatic.com/api/1.0/')),
          body: {"method": "getQuote", "format": "json", "lang": "en"});

      // wyciaganie danych z responsa
      // service w retrofit i obiekt modelu, ktory freezed biblioteka do serializacji,
      // obiekt i wyciagae zmienna
      // przekazac zawartosc do UI

      // TODO retorfit-> service ktory bedzie tworyzl te 2 zapytania i przkeaze link do obrazka do stanu i inspiracja
        // EASY LOADING overlay

      dynamic res = jsonDecode(response.body);
      owner = res["quoteAuthor"].toString().trim();
      quote = res["quoteText"].toString().replaceAll("â", " ");
      getImg(owner);
      final inspirationResponse = InspirationResponse(quoteAuthor: "pozniej_autor", quoteText: "pozniej_text");

      emit(ShowInspirationState(inspirationResponse));

      //get img rowniez
    } catch (e) {
      Logger.e('$prefix:fetchEntities: error', e);
      emit(const NetworkErrorState());
    }
  }



  @override
  InspirationState? fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(InspirationState state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  

  
  
  
  // TODO
//pobieranie obrazka losowego

// baza danych hydrated bloc/cubit

// kopiowanie w UI nie bloc

// udostepnianie, znalezc jak zrobic wyjscie na zewnetrzna/okno udostepniania

// obsluga ulubionych, cubit globalny
//cachowanie kolejka 10 wczesniej pobranych ostatni outuje i laduje na pierwszy, przesuwanie
}

