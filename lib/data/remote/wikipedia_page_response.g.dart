// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wikipedia_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WikipediaPageResponse _$$_WikipediaPageResponseFromJson(
        Map<String, dynamic> json) =>
    _$_WikipediaPageResponse(
      query: json['query'] == null
          ? null
          : WikipediaPageQuery.fromJson(json['query'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WikipediaPageResponseToJson(
        _$_WikipediaPageResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
    };

_$_WikipediaPageQuery _$$_WikipediaPageQueryFromJson(
        Map<String, dynamic> json) =>
    _$_WikipediaPageQuery(
      pages: (json['pages'] as Map<String, WikipediaPage>?)?.map(
            (k, e) =>
                MapEntry(k, WikipediaPage.fromJson(dynamic as Map<String, dynamic>)),
          ) ??
          {},
    );

Map<String, dynamic> _$$_WikipediaPageQueryToJson(
        _$_WikipediaPageQuery instance) =>
    <String, dynamic>{
      'pages': instance.pages,
    };

_$_WikipediaPage _$$_WikipediaPageFromJson(Map<String, dynamic> json) =>
    _$_WikipediaPage(
      thumbnail: json['thumbnail'] == null
          ? null
          : WikipediaPageThumbnail.fromJson(
              json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WikipediaPageToJson(_$_WikipediaPage instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
    };

_$_WikipediaPageThumbnail _$$_WikipediaPageThumbnailFromJson(
        Map<String, dynamic> json) =>
    _$_WikipediaPageThumbnail(
      source: json['source'] as String? ?? '',
    );

Map<String, dynamic> _$$_WikipediaPageThumbnailToJson(
        _$_WikipediaPageThumbnail instance) =>
    <String, dynamic>{
      'source': instance.source,
    };
