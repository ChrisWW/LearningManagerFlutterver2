// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inspiration_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InspirationResponse _$InspirationFromJson(Map<String, dynamic> json) {
  return _Inspiration.fromJson(json);
}

/// @nodoc
class _$InspirationTearOff {
  const _$InspirationTearOff();

  _Inspiration call({String quoteAuthor = '', String quoteText = ''}) {
    return _Inspiration(
      quoteAuthor: quoteAuthor,
      quoteText: quoteText,
    );
  }

  InspirationResponse fromJson(Map<String, Object?> json) {
    return InspirationResponse.fromJson(json);
  }
}

/// @nodoc
const $Inspiration = _$InspirationTearOff();

/// @nodoc
mixin _$Inspiration {
  String get quoteAuthor => throw _privateConstructorUsedError;
  String get quoteText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InspirationCopyWith<InspirationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspirationCopyWith<$Res> {
  factory $InspirationCopyWith(
          InspirationResponse value, $Res Function(InspirationResponse) then) =
      _$InspirationCopyWithImpl<$Res>;
  $Res call({String quoteAuthor, String quoteText});
}

/// @nodoc
class _$InspirationCopyWithImpl<$Res> implements $InspirationCopyWith<$Res> {
  _$InspirationCopyWithImpl(this._value, this._then);

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
abstract class _$InspirationCopyWith<$Res>
    implements $InspirationCopyWith<$Res> {
  factory _$InspirationCopyWith(
          _Inspiration value, $Res Function(_Inspiration) then) =
      __$InspirationCopyWithImpl<$Res>;
  @override
  $Res call({String quoteAuthor, String quoteText});
}

/// @nodoc
class __$InspirationCopyWithImpl<$Res> extends _$InspirationCopyWithImpl<$Res>
    implements _$InspirationCopyWith<$Res> {
  __$InspirationCopyWithImpl(
      _Inspiration _value, $Res Function(_Inspiration) _then)
      : super(_value, (v) => _then(v as _Inspiration));

  @override
  _Inspiration get _value => super._value as _Inspiration;

  @override
  $Res call({
    Object? quoteAuthor = freezed,
    Object? quoteText = freezed,
  }) {
    return _then(_Inspiration(
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
class _$_Inspiration with DiagnosticableTreeMixin implements _Inspiration {
  _$_Inspiration({this.quoteAuthor = '', this.quoteText = ''});

  factory _$_Inspiration.fromJson(Map<String, dynamic> json) =>
      _$$_InspirationFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String quoteAuthor;
  @JsonKey(defaultValue: '')
  @override
  final String quoteText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Inspiration(quoteAuthor: $quoteAuthor, quoteText: $quoteText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Inspiration'))
      ..add(DiagnosticsProperty('quoteAuthor', quoteAuthor))
      ..add(DiagnosticsProperty('quoteText', quoteText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Inspiration &&
            (identical(other.quoteAuthor, quoteAuthor) ||
                other.quoteAuthor == quoteAuthor) &&
            (identical(other.quoteText, quoteText) ||
                other.quoteText == quoteText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quoteAuthor, quoteText);

  @JsonKey(ignore: true)
  @override
  _$InspirationCopyWith<_Inspiration> get copyWith =>
      __$InspirationCopyWithImpl<_Inspiration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InspirationToJson(this);
  }
}

abstract class _Inspiration implements InspirationResponse {
  factory _Inspiration({String quoteAuthor, String quoteText}) = _$_Inspiration;

  factory _Inspiration.fromJson(Map<String, dynamic> json) =
      _$_Inspiration.fromJson;

  @override
  String get quoteAuthor;
  @override
  String get quoteText;
  @override
  @JsonKey(ignore: true)
  _$InspirationCopyWith<_Inspiration> get copyWith =>
      throw _privateConstructorUsedError;
}
