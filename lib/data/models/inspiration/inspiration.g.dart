// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inspiration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Inspirations _$$_InspirationsFromJson(Map<String, dynamic> json) =>
    _$_Inspirations(
      inspirations: (json['inspirations'] as List<dynamic>?)
              ?.map((dynamic e) => Inspiration.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Inspiration>[],
    );

Map<String, dynamic> _$$_InspirationsToJson(_$_Inspirations instance) =>
    <String, dynamic>{
      'inspirations': instance.inspirations,
    };

_$_Inspiration _$$_InspirationFromJson(Map<String, dynamic> json) =>
    _$_Inspiration(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      date: json['date'] as String? ?? '',
      authorQuote: json['authorQuote'] as String? ?? '',
      quote: json['quote'] as String? ?? '',
      localization: json['localization'] as String? ?? '',
    );

Map<String, dynamic> _$$_InspirationToJson(_$_Inspiration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'date': instance.date,
      'authorQuote': instance.authorQuote,
      'quote': instance.quote,
      'localization': instance.localization,
    };
