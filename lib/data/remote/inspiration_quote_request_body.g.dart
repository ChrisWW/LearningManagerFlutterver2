// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspiration_quote_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InspirationQuoteRequestBody _$$_InspirationQuoteRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _$_InspirationQuoteRequestBody(
      method: json['method'] as String? ?? 'getQuote',
      format: json['format'] as String? ?? 'json',
      lang: json['lang'] as String? ?? 'en',
    );

Map<String, dynamic> _$$_InspirationQuoteRequestBodyToJson(
        _$_InspirationQuoteRequestBody instance) =>
    <String, dynamic>{
      'method': instance.method,
      'format': instance.format,
      'lang': instance.lang,
    };
