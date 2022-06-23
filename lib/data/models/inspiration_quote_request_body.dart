import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class InspirationQuoteRequestBody with _$InspirationQuoteRequestBody {
  factory InspirationQuoteRequestBody({
    @Default('getQuote') String method,
    @Default('json') String format,
    @Default('en') String lang
  }) = _InspirationQuoteRequestBody;
  factory InspirationQuoteRequestBody.fromJson(Map<String, dynamic> json) =>
      _$InspirationQuoteRequestBodyFromJson(json);
}
