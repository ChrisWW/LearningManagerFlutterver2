import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wikipedia_page_response.freezed.dart';
part 'wikipedia_page_response.g.dart';

@freezed
class WikipediaPageResponse with _$WikipediaPageResponse {
  factory WikipediaPageResponse({
    WikipediaPageQuery? query,
  }) = _WikipediaPageResponse;

  factory WikipediaPageResponse.fromJson(Map<String, dynamic> json) =>
      _$WikipediaPageResponseFromJson(json);
}

@freezed
class WikipediaPageQuery with _$WikipediaPageQuery {
  factory WikipediaPageQuery({
    @Default(<String, WikipediaPage>{}) Map<String, WikipediaPage> pages,
  }) = _WikipediaPageQuery;

  factory WikipediaPageQuery.fromJson(Map<String, dynamic> json) =>
      _$WikipediaPageQueryFromJson(json);
}

@freezed
class WikipediaPage with _$WikipediaPage {
  factory WikipediaPage({
    WikipediaPageThumbnail? thumbnail,
  }) = _WikipediaPage;

  factory WikipediaPage.fromJson(Map<String, dynamic> json) =>
      _$WikipediaPageFromJson(json);
}

@freezed
class WikipediaPageThumbnail with _$WikipediaPageThumbnail {
  factory WikipediaPageThumbnail({
    @Default('') String source,
  }) = _WikipediaPageThumbnail;

  factory WikipediaPageThumbnail.fromJson(Map<String, dynamic> json) =>
      _$WikipediaPageThumbnailFromJson(json);
}
