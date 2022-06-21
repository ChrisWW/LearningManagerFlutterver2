import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspiration.freezed.dart';
part 'inspiration.g.dart';

@freezed
class Inspiration with _$Inspiration {
  factory Inspiration({
    @Default('') String quoteAuthor,
    @Default('') String quoteText
  }) = _Inspiration;
  factory Inspiration.fromJson(Map<String, dynamic> json) =>
      _$InspirationFromJson(json);
}