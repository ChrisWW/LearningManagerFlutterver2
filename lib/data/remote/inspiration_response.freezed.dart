// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inspiration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InspirationResponse _$InspirationResponseFromJson(Map<String, dynamic> json) {
  return _InspirationResponse.fromJson(json);
}

/// @nodoc
mixin _$InspirationResponse {
  String get quoteAuthor => throw _privateConstructorUsedError;
  String get quoteText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspirationResponseCopyWith<InspirationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationResponseCopyWith<$Res> {
  factory $InspirationResponseCopyWith(
          InspirationResponse value, $Res Function(InspirationResponse) then) =
      _$InspirationResponseCopyWithImpl<$Res>;
  $Res call({String quoteAuthor, String quoteText});
}

/// @nodoc
class _$InspirationResponseCopyWithImpl<$Res>
    implements $InspirationResponseCopyWith<$Res> {
  _$InspirationResponseCopyWithImpl(this._value, this._then);

  final InspirationResponse _value;
  // ignore: unused_field
  final $Res Function(InspirationResponse) _then;

  @override
  $Res call({
    Object? quoteAuthor = freezed,
    Object? quoteText = freezed,
  }) {
    return _then(_value.copyWith(
      quoteAuthor: quoteAuthor == freezed
          ? _value.quoteAuthor
          : quoteAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      quoteText: quoteText == freezed
          ? _value.quoteText
          : quoteText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_InspirationResponseCopyWith<$Res>
    implements $InspirationResponseCopyWith<$Res> {
  factory _$$_InspirationResponseCopyWith(_$_InspirationResponse value,
          $Res Function(_$_InspirationResponse) then) =
      __$$_InspirationResponseCopyWithImpl<$Res>;
  @override
  $Res call({String quoteAuthor, String quoteText});
}

/// @nodoc
class __$$_InspirationResponseCopyWithImpl<$Res>
    extends _$InspirationResponseCopyWithImpl<$Res>
    implements _$$_InspirationResponseCopyWith<$Res> {
  __$$_InspirationResponseCopyWithImpl(_$_InspirationResponse _value,
      $Res Function(_$_InspirationResponse) _then)
      : super(_value, (v) => _then(v as _$_InspirationResponse));

  @override
  _$_InspirationResponse get _value => super._value as _$_InspirationResponse;

  @override
  $Res call({
    Object? quoteAuthor = freezed,
    Object? quoteText = freezed,
  }) {
    return _then(_$_InspirationResponse(
      quoteAuthor: quoteAuthor == freezed
          ? _value.quoteAuthor
          : quoteAuthor // ignore: cast_nullable_to_non_nullable
              as String,
      quoteText: quoteText == freezed
          ? _value.quoteText
          : quoteText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InspirationResponse
    with DiagnosticableTreeMixin
    implements _InspirationResponse {
  _$_InspirationResponse({this.quoteAuthor = '', this.quoteText = ''});

  factory _$_InspirationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_InspirationResponseFromJson(json);

  @override
  @JsonKey()
  final String quoteAuthor;
  @override
  @JsonKey()
  final String quoteText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'InspirationResponse(quoteAuthor: $quoteAuthor, quoteText: $quoteText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'InspirationResponse'))
      ..add(DiagnosticsProperty('quoteAuthor', quoteAuthor))
      ..add(DiagnosticsProperty('quoteText', quoteText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InspirationResponse &&
            const DeepCollectionEquality()
                .equals(other.quoteAuthor, quoteAuthor) &&
            const DeepCollectionEquality().equals(other.quoteText, quoteText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(quoteAuthor),
      const DeepCollectionEquality().hash(quoteText));

  @JsonKey(ignore: true)
  @override
  _$$_InspirationResponseCopyWith<_$_InspirationResponse> get copyWith =>
      __$$_InspirationResponseCopyWithImpl<_$_InspirationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspirationResponseToJson(this);
  }
}

abstract class _InspirationResponse implements InspirationResponse {
  factory _InspirationResponse(
      {final String quoteAuthor,
      final String quoteText}) = _$_InspirationResponse;

  factory _InspirationResponse.fromJson(Map<String, dynamic> json) =
      _$_InspirationResponse.fromJson;

  @override
  String get quoteAuthor;
  @override
  String get quoteText;
  @override
  @JsonKey(ignore: true)
  _$$_InspirationResponseCopyWith<_$_InspirationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
