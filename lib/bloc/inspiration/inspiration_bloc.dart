import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_production_boilerplate/repositories/inspiration_repository.dart';

part 'inspiration_event.dart';
part 'inspiration_state.dart';

// TODO retro
class InspirationBloc extends HydratedBloc<InspirationEvent, InspirationState> {
  static const String prefix = 'InspirationBloc';
  static const String profileKey = 'profile';

  // TODO czy to jest potrzebne do usunięcia? i event i state wszystko jest w cubicie.

  final InspirationRepository _inspirationRepository;

  InspirationBloc(this._inspirationRepository) : super(TestState());

  @override
  fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic>? toJson(state) {
    // TODO: implement toJson
    throw UnimplementedError();
  }

}






// // Choose to show the loaded image from the Api or the offline one
// Widget drawImg() {
//   if (imglink.isEmpty) {
//     return Image.asset("img/offline.jpg", fit: BoxFit.cover);
//   } else {
//     return Image.network(imglink, fit: BoxFit.cover);
//   }
// }