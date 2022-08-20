import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_production_boilerplate/data/remote/inspiration_response.dart';
import 'package:flutter_production_boilerplate/data/remote/wikipedia_page_response.dart';
import 'package:flutter_production_boilerplate/repositories/inspiration_repository.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'inspiration_state.dart';

class InspirationCubit extends HydratedCubit<InspirationState> {
  static const String prefix = 'InspirationCubit';
  static const String inspirationKey = 'inspiration';

  final InspirationRepository _inspirationRepository;

  InspirationCubit(this._inspirationRepository)
      : super(InitialInspirationState());

  // TODO retrofit flutter with bloc
  // TODO retorfit-> service ktory bedzie tworyzl te 2 zapytania i przkeaze link do obrazka do stanu i inspiracja
  // wyciaganie danych z responsa// service w retrofit i obiekt modelu, ktory freezed biblioteka do serializacji,// obiekt i wyciagae zmienna// przekazac zawartosc do UI
  Future<void> getInspiration() async {
    final InspirationState previousState = state;
    try {
      emit(const InProgressInspirationState());
      final InspirationResponse inspirationResponse =
          await _inspirationRepository.postQuote();
      final WikipediaPageResponse wikipediaPageResponse =
          await _inspirationRepository
              .getImage(inspirationResponse.quoteAuthor);
      final String imageUrl = wikipediaPageResponse
          .query!.pages.entries.first.value.thumbnail!.source;
      emit(ShowInspirationState(inspirationResponse, imageUrl));
    } catch (e) {
      if (previousState is ShowInspirationState) {
        emit(previousState);
      } else {
        emit(const ErrorInspirationState());
      }

      print("Error in PostQuote InspirationCubit");
      print(e.toString());
    }
  }

  Future<void> makeCopyQuote(String quote, String owner, BuildContext context) async {
      Clipboard.setData(ClipboardData(text: (quote + "\n- " + owner))).then((_){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Quote Copied")));
      });

      // Deprecated clipboard ubt Toast is ok
      // ClipboardManager.copyToClipBoard(quote + "\n- " + owner).then((result) {
      //   Toast.show("Quote Copied", context, duration: Toast.LENGTH_SHORT);
      // });
  }

  // // When share button clicked, share a text and screnshot of the quote
  // Future<void> shareQuote() async {
  //   final directory = (await getApplicationDocumentsDirectory())
  //       .path; //from path_provide package
  //   String path =
  //       '$directory/screenshots${DateTime.now().toIso8601String()}.png';
  //
  //   //path: path in argument with nev versions?
  //   screenshotController.capture().then((_) {
  //     Share.shareFiles([path], text: quote);
  //   }).catchError((onError) {
  //     print(onError);
  //   });
  // }

  @override
  InspirationState? fromJson(Map<String, dynamic> json) {
    if (json.containsKey(inspirationKey)) {
      return ShowInspirationState(
        InspirationResponse.fromJson(
          json[inspirationKey] as Map<String, dynamic>,
        ),
        '',
      );
    } else {
      return InitialInspirationState();
    }
  }

  @override
  Map<String, dynamic>? toJson(InspirationState state) {
    if (state is ShowInspirationState) {
      return <String, dynamic>{
        inspirationKey: state.inspiration.toJson(),
      };
    } else {
      return <String, dynamic>{};
    }
  }
}

// TODO
//pobieranie obrazka losowego

// baza danych hydrated bloc/cubit

// kopiowanie w UI nie bloc

// udostepnianie, znalezc jak zrobic wyjscie na zewnetrzna/okno udostepniania

// obsluga ulubionych, cubit globalny
//cachowanie kolejka 10 wczesniej pobranych ostatni outuje i laduje na pierwszy, przesuwanie
