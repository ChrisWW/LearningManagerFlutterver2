// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inspiration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Inspirations _$InspirationsFromJson(Map<String, dynamic> json) {
  return _Inspirations.fromJson(json);
}

/// @nodoc
mixin _$Inspirations {
  List<Inspiration> get inspirations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspirationsCopyWith<Inspirations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationsCopyWith<$Res> {
  factory $InspirationsCopyWith(
          Inspirations value, $Res Function(Inspirations) then) =
      _$InspirationsCopyWithImpl<$Res>;
  $Res call({List<Inspiration> inspirations});
}

/// @nodoc
class _$InspirationsCopyWithImpl<$Res> implements $InspirationsCopyWith<$Res> {
  _$InspirationsCopyWithImpl(this._value, this._then);

  final Inspirations _value;
  // ignore: unused_field
  final $Res Function(Inspirations) _then;

  @override
  $Res call({
    Object? inspirations = freezed,
  }) {
    return _then(_value.copyWith(
      inspirations: inspirations == freezed
          ? _value.inspirations
          : inspirations // ignore: cast_nullable_to_non_nullable
              as List<Inspiration>,
    ));
  }
}

/// @nodoc
abstract class _$$_InspirationsCopyWith<$Res>
    implements $InspirationsCopyWith<$Res> {
  factory _$$_InspirationsCopyWith(
          _$_Inspirations value, $Res Function(_$_Inspirations) then) =
      __$$_InspirationsCopyWithImpl<$Res>;
  @override
  $Res call({List<Inspiration> inspirations});
}

/// @nodoc
class __$$_InspirationsCopyWithImpl<$Res>
    extends _$InspirationsCopyWithImpl<$Res>
    implements _$$_InspirationsCopyWith<$Res> {
  __$$_InspirationsCopyWithImpl(
      _$_Inspirations _value, $Res Function(_$_Inspirations) _then)
      : super(_value, (v) => _then(v as _$_Inspirations));

  @override
  _$_Inspirations get _value => super._value as _$_Inspirations;

  @override
  $Res call({
    Object? inspirations = freezed,
  }) {
    return _then(_$_Inspirations(
      inspirations: inspirations == freezed
          ? _value._inspirations
          : inspirations // ignore: cast_nullable_to_non_nullable
              as List<Inspiration>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inspirations extends _Inspirations with DiagnosticableTreeMixin {
  _$_Inspirations(
      {final List<Inspiration> inspirations = const <Inspiration>[]})
      : _inspirations = inspirations,
        super._();

  factory _$_Inspirations.fromJson(Map<String, dynamic> json) =>
      _$$_InspirationsFromJson(json);

  final List<Inspiration> _inspirations;
  @override
  @JsonKey()
  List<Inspiration> get inspirations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inspirations);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Inspirations(inspirations: $inspirations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Inspirations'))
      ..add(DiagnosticsProperty('inspirations', inspirations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inspirations &&
            const DeepCollectionEquality()
                .equals(other._inspirations, _inspirations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_inspirations));

  @JsonKey(ignore: true)
  @override
  _$$_InspirationsCopyWith<_$_Inspirations> get copyWith =>
      __$$_InspirationsCopyWithImpl<_$_Inspirations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspirationsToJson(this);
  }
}

abstract class _Inspirations extends Inspirations {
  factory _Inspirations({final List<Inspiration> inspirations}) =
      _$_Inspirations;
  _Inspirations._() : super._();

  factory _Inspirations.fromJson(Map<String, dynamic> json) =
      _$_Inspirations.fromJson;

  @override
  List<Inspiration> get inspirations;
  @override
  @JsonKey(ignore: true)
  _$$_InspirationsCopyWith<_$_Inspirations> get copyWith =>
      throw _privateConstructorUsedError;
}

Inspiration _$InspirationFromJson(Map<String, dynamic> json) {
  return _Inspiration.fromJson(json);
}

/// @nodoc
mixin _$Inspiration {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  set title(String value) => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  set description(String value) => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  set imageUrl(String value) => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  set date(String value) => throw _privateConstructorUsedError;
  String get authorQuote => throw _privateConstructorUsedError;
  set authorQuote(String value) => throw _privateConstructorUsedError;
  String get quote => throw _privateConstructorUsedError;
  set quote(String value) => throw _privateConstructorUsedError;
  String get localization => throw _privateConstructorUsedError;
  set localization(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspirationCopyWith<Inspiration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationCopyWith<$Res> {
  factory $InspirationCopyWith(
          Inspiration value, $Res Function(Inspiration) then) =
      _$InspirationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String description,
      String imageUrl,
      String date,
      String authorQuote,
      String quote,
      String localization});
}

/// @nodoc
class _$InspirationCopyWithImpl<$Res> implements $InspirationCopyWith<$Res> {
  _$InspirationCopyWithImpl(this._value, this._then);

  final Inspiration _value;
  // ignore: unused_field
  final $Res Function(Inspiration) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? date = freezed,
    Object? authorQuote = freezed,
    Object? quote = freezed,
    Object? localization = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      authorQuote: authorQuote == freezed
          ? _value.authorQuote
          : authorQuote // ignore: cast_nullable_to_non_nullable
              as String,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      localization: localization == freezed
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InspirationCopyWith<$Res>
    implements $InspirationCopyWith<$Res> {
  factory _$$_InspirationCopyWith(
          _$_Inspiration value, $Res Function(_$_Inspiration) then) =
      __$$_InspirationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String description,
      String imageUrl,
      String date,
      String authorQuote,
      String quote,
      String localization});
}

/// @nodoc
class __$$_InspirationCopyWithImpl<$Res> extends _$InspirationCopyWithImpl<$Res>
    implements _$$_InspirationCopyWith<$Res> {
  __$$_InspirationCopyWithImpl(
      _$_Inspiration _value, $Res Function(_$_Inspiration) _then)
      : super(_value, (v) => _then(v as _$_Inspiration));

  @override
  _$_Inspiration get _value => super._value as _$_Inspiration;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? date = freezed,
    Object? authorQuote = freezed,
    Object? quote = freezed,
    Object? localization = freezed,
  }) {
    return _then(_$_Inspiration(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      authorQuote: authorQuote == freezed
          ? _value.authorQuote
          : authorQuote // ignore: cast_nullable_to_non_nullable
              as String,
      quote: quote == freezed
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      localization: localization == freezed
          ? _value.localization
          : localization // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inspiration with DiagnosticableTreeMixin implements _Inspiration {
  _$_Inspiration(
      {this.id = '',
      this.title = '',
      this.description = '',
      this.imageUrl = '',
      this.date = '',
      this.authorQuote = '',
      this.quote = '',
      this.localization = ''});

  factory _$_Inspiration.fromJson(Map<String, dynamic> json) =>
      _$$_InspirationFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  String title;
  @override
  @JsonKey()
  String description;
  @override
  @JsonKey()
  String imageUrl;
  @override
  @JsonKey()
  String date;
  @override
  @JsonKey()
  String authorQuote;
  @override
  @JsonKey()
  String quote;
  @override
  @JsonKey()
  String localization;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Inspiration(id: $id, title: $title, description: $description, imageUrl: $imageUrl, date: $date, authorQuote: $authorQuote, quote: $quote, localization: $localization)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Inspiration'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('authorQuote', authorQuote))
      ..add(DiagnosticsProperty('quote', quote))
      ..add(DiagnosticsProperty('localization', localization));
  }

  @JsonKey(ignore: true)
  @override
  _$$_InspirationCopyWith<_$_Inspiration> get copyWith =>
      __$$_InspirationCopyWithImpl<_$_Inspiration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspirationToJson(this);
  }
}

abstract class _Inspiration implements Inspiration {
  factory _Inspiration(
      {final String id,
      String title,
      String description,
      String imageUrl,
      String date,
      String authorQuote,
      String quote,
      String localization}) = _$_Inspiration;

  factory _Inspiration.fromJson(Map<String, dynamic> json) =
      _$_Inspiration.fromJson;

  @override
  String get id;
  @override
  String get title;
  set title(String value);
  @override
  String get description;
  set description(String value);
  @override
  String get imageUrl;
  set imageUrl(String value);
  @override
  String get date;
  set date(String value);
  @override
  String get authorQuote;
  set authorQuote(String value);
  @override
  String get quote;
  set quote(String value);
  @override
  String get localization;
  set localization(String value);
  @override
  @JsonKey(ignore: true)
  _$$_InspirationCopyWith<_$_Inspiration> get copyWith =>
      throw _privateConstructorUsedError;
}
