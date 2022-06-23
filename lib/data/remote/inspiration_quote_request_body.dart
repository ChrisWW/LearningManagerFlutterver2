import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspiration_quote_request_body.freezed.dart';
part 'inspiration_quote_request_body.g.dart';

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
