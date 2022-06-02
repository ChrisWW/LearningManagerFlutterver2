import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

// TODO
// Ekran logowanie
// wywolac z blocu event Try To Log In
// dac listenera na przekierowania do Home
// UI TextField login, password, button na klikniecie
// wywolac funkcje na klikniecie z blocu

// ** firebase implemenattion

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    @Default('') String id,
    @Default('') String login,
    @Default('') String imageUrl,
  }) = _UserProfile;
// nie ma tutaj toJson ale paczka freezed generuje to za nas
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}