import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspiration_response.freezed.dart';
part 'inspiration_response.g.dart';

@freezed
class InspirationResponse with _$InspirationResponse {
  factory InspirationResponse({
    @Default('') String quoteAuthor,
    @Default('') String quoteText
  }) = _InspirationResponse;

  factory InspirationResponse.fromJson(Map<String, dynamic> json) =>
      _$InspirationResponseFromJson(json);
}