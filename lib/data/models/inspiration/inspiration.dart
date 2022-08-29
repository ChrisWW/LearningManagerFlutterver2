import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'inspiration.freezed.dart';
part 'inspiration.g.dart';

@freezed
class Inspirations with _$Inspirations {
  factory Inspirations({
    @Default(<Inspiration>[]) List<Inspiration> inspirations,
  }) = _Inspirations;

  Inspirations._();

  factory Inspirations.fromJson(Map<String, dynamic> json) => _$InspirationsFromJson(json);

  static Inspirations empty() => Inspirations(inspirations: <Inspiration>[]);
}

@unfreezed
class Inspiration with _$Inspiration {
  factory Inspiration({
    @Default('') final String id,
    @Default('') String title,
    @Default('') String description,
    @Default('') String imageUrl,
    @Default('') String date,
    @Default('') String authorQuote,
    @Default('') String quote,
    @Default('') String localization,
  }) = _Inspiration;

  factory Inspiration.fromJson(Map<String, dynamic> json) => _$InspirationFromJson(json);
}
