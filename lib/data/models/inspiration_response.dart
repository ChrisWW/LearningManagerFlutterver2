import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspiration.freezed.dart';
part 'inspiration.g.dart';

@freezed
class InspirationResponse with _$Inspiration {
  factory InspirationResponse({
    @Default('') String quoteAuthor,
    @Default('') String quoteText
  }) = _Inspiration;
  factory InspirationResponse.fromJson(Map<String, dynamic> json) =>
      _$InspirationFromJson(json);
}