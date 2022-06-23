// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inspiration_quote_request_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InspirationQuoteRequestBody _$InspirationQuoteRequestBodyFromJson(
    Map<String, dynamic> json) {
  return _InspirationQuoteRequestBody.fromJson(json);
}

/// @nodoc
class _$InspirationQuoteRequestBodyTearOff {
  const _$InspirationQuoteRequestBodyTearOff();

  _InspirationQuoteRequestBody call(
      {String method = 'getQuote',
      String format = 'json',
      String lang = 'en'}) {
    return _InspirationQuoteRequestBody(
      method: method,
      format: format,
      lang: lang,
    );
  }

  InspirationQuoteRequestBody fromJson(Map<String, Object?> json) {
    return InspirationQuoteRequestBody.fromJson(json);
  }
}

/// @nodoc
const $InspirationQuoteRequestBody = _$InspirationQuoteRequestBodyTearOff();

/// @nodoc
mixin _$InspirationQuoteRequestBody {
  String get method => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspirationQuoteRequestBodyCopyWith<InspirationQuoteRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationQuoteRequestBodyCopyWith<$Res> {
  factory $InspirationQuoteRequestBodyCopyWith(
          InspirationQuoteRequestBody value,
          $Res Function(InspirationQuoteRequestBody) then) =
      _$InspirationQuoteRequestBodyCopyWithImpl<$Res>;
  $Res call({String method, String format, String lang});
}

/// @nodoc
class _$InspirationQuoteRequestBodyCopyWithImpl<$Res>
    implements $InspirationQuoteRequestBodyCopyWith<$Res> {
  _$InspirationQuoteRequestBodyCopyWithImpl(this._value, this._then);

  final InspirationQuoteRequestBody _value;
  // ignore: unused_field
  final $Res Function(InspirationQuoteRequestBody) _then;

  @override
  $Res call({
    Object? method = freezed,
    Object? format = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InspirationQuoteRequestBodyCopyWith<$Res>
    implements $InspirationQuoteRequestBodyCopyWith<$Res> {
  factory _$InspirationQuoteRequestBodyCopyWith(
          _InspirationQuoteRequestBody value,
          $Res Function(_InspirationQuoteRequestBody) then) =
      __$InspirationQuoteRequestBodyCopyWithImpl<$Res>;
  @override
  $Res call({String method, String format, String lang});
}

/// @nodoc
class __$InspirationQuoteRequestBodyCopyWithImpl<$Res>
    extends _$InspirationQuoteRequestBodyCopyWithImpl<$Res>
    implements _$InspirationQuoteRequestBodyCopyWith<$Res> {
  __$InspirationQuoteRequestBodyCopyWithImpl(
      _InspirationQuoteRequestBody _value,
      $Res Function(_InspirationQuoteRequestBody) _then)
      : super(_value, (v) => _then(v as _InspirationQuoteRequestBody));

  @override
  _InspirationQuoteRequestBody get _value =>
      super._value as _InspirationQuoteRequestBody;

  @override
  $Res call({
    Object? method = freezed,
    Object? format = freezed,
    Object? lang = freezed,
  }) {
    return _then(_InspirationQuoteRequestBody(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      format: format == freezed
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InspirationQuoteRequestBody implements _InspirationQuoteRequestBody {
  _$_InspirationQuoteRequestBody(
      {this.method = 'getQuote', this.format = 'json', this.lang = 'en'});

  factory _$_InspirationQuoteRequestBody.fromJson(Map<String, dynamic> json) =>
      _$$_InspirationQuoteRequestBodyFromJson(json);

  @JsonKey(defaultValue: 'getQuote')
  @override
  final String method;
  @JsonKey(defaultValue: 'json')
  @override
  final String format;
  @JsonKey(defaultValue: 'en')
  @override
  final String lang;

  @override
  String toString() {
    return 'InspirationQuoteRequestBody(method: $method, format: $format, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InspirationQuoteRequestBody &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, method, format, lang);

  @JsonKey(ignore: true)
  @override
  _$InspirationQuoteRequestBodyCopyWith<_InspirationQuoteRequestBody>
      get copyWith => __$InspirationQuoteRequestBodyCopyWithImpl<
          _InspirationQuoteRequestBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspirationQuoteRequestBodyToJson(this);
  }
}

abstract class _InspirationQuoteRequestBody
    implements InspirationQuoteRequestBody {
  factory _InspirationQuoteRequestBody(
      {String method,
      String format,
      String lang}) = _$_InspirationQuoteRequestBody;

  factory _InspirationQuoteRequestBody.fromJson(Map<String, dynamic> json) =
      _$_InspirationQuoteRequestBody.fromJson;

  @override
  String get method;
  @override
  String get format;
  @override
  String get lang;
  @override
  @JsonKey(ignore: true)
  _$InspirationQuoteRequestBodyCopyWith<_InspirationQuoteRequestBody>
      get copyWith => throw _privateConstructorUsedError;
}
