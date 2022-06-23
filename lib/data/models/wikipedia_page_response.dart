import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikipedia_page_response.freezed.dart';
part 'wikipedia_page_response.g.dart';

@freezed
class WikipediaPageResponse with _$WikipediaPageResponse {
  factory WikipediaPageResponse({
    @Default('') String quoteAuthor,
    @Default('') String quoteText
  }) = _WikipediaPageResponse;
  factory WikipediaPageResponse.fromJson(Map<String, dynamic> json) =>
      _$WikipediaPageResponseFromJson(json);
}