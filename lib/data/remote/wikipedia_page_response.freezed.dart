// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wikipedia_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WikipediaPageResponse _$WikipediaPageResponseFromJson(
    Map<String, dynamic> json) {
  return _WikipediaPageResponse.fromJson(json);
}

/// @nodoc
class _$WikipediaPageResponseTearOff {
  const _$WikipediaPageResponseTearOff();

  _WikipediaPageResponse call({WikipediaPageQuery? query}) {
    return _WikipediaPageResponse(
      query: query,
    );
  }

  WikipediaPageResponse fromJson(Map<String, Object?> json) {
    return WikipediaPageResponse.fromJson(json);
  }
}

/// @nodoc
const $WikipediaPageResponse = _$WikipediaPageResponseTearOff();

/// @nodoc
mixin _$WikipediaPageResponse {
  WikipediaPageQuery? get query => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikipediaPageResponseCopyWith<WikipediaPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikipediaPageResponseCopyWith<$Res> {
  factory $WikipediaPageResponseCopyWith(WikipediaPageResponse value,
          $Res Function(WikipediaPageResponse) then) =
      _$WikipediaPageResponseCopyWithImpl<$Res>;
  $Res call({WikipediaPageQuery? query});

  $WikipediaPageQueryCopyWith<$Res>? get query;
}

/// @nodoc
class _$WikipediaPageResponseCopyWithImpl<$Res>
    implements $WikipediaPageResponseCopyWith<$Res> {
  _$WikipediaPageResponseCopyWithImpl(this._value, this._then);

  final WikipediaPageResponse _value;
  // ignore: unused_field
  final $Res Function(WikipediaPageResponse) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as WikipediaPageQuery?,
    ));
  }

  @override
  $WikipediaPageQueryCopyWith<$Res>? get query {
    if (_value.query == null) {
      return null;
    }

    return $WikipediaPageQueryCopyWith<$Res>(_value.query!, (value) {
      return _then(_value.copyWith(query: value));
    });
  }
}

/// @nodoc
abstract class _$WikipediaPageResponseCopyWith<$Res>
    implements $WikipediaPageResponseCopyWith<$Res> {
  factory _$WikipediaPageResponseCopyWith(_WikipediaPageResponse value,
          $Res Function(_WikipediaPageResponse) then) =
      __$WikipediaPageResponseCopyWithImpl<$Res>;
  @override
  $Res call({WikipediaPageQuery? query});

  @override
  $WikipediaPageQueryCopyWith<$Res>? get query;
}

/// @nodoc
class __$WikipediaPageResponseCopyWithImpl<$Res>
    extends _$WikipediaPageResponseCopyWithImpl<$Res>
    implements _$WikipediaPageResponseCopyWith<$Res> {
  __$WikipediaPageResponseCopyWithImpl(_WikipediaPageResponse _value,
      $Res Function(_WikipediaPageResponse) _then)
      : super(_value, (v) => _then(v as _WikipediaPageResponse));

  @override
  _WikipediaPageResponse get _value => super._value as _WikipediaPageResponse;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_WikipediaPageResponse(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as WikipediaPageQuery?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WikipediaPageResponse
    with DiagnosticableTreeMixin
    implements _WikipediaPageResponse {
  _$_WikipediaPageResponse({this.query});

  factory _$_WikipediaPageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WikipediaPageResponseFromJson(json);

  @override
  final WikipediaPageQuery? query;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WikipediaPageResponse(query: $query)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WikipediaPageResponse'))
      ..add(DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WikipediaPageResponse &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  _$WikipediaPageResponseCopyWith<_WikipediaPageResponse> get copyWith =>
      __$WikipediaPageResponseCopyWithImpl<_WikipediaPageResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageResponseToJson(this);
  }
}

abstract class _WikipediaPageResponse implements WikipediaPageResponse {
  factory _WikipediaPageResponse({WikipediaPageQuery? query}) =
      _$_WikipediaPageResponse;

  factory _WikipediaPageResponse.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPageResponse.fromJson;

  @override
  WikipediaPageQuery? get query;
  @override
  @JsonKey(ignore: true)
  _$WikipediaPageResponseCopyWith<_WikipediaPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

WikipediaPageQuery _$WikipediaPageQueryFromJson(Map<String, dynamic> json) {
  return _WikipediaPageQuery.fromJson(json);
}

/// @nodoc
class _$WikipediaPageQueryTearOff {
  const _$WikipediaPageQueryTearOff();

  _WikipediaPageQuery call(
      {Map<String, WikipediaPage> pages = const <String, WikipediaPage>{}}) {
    return _WikipediaPageQuery(
      pages: pages,
    );
  }

  WikipediaPageQuery fromJson(Map<String, Object?> json) {
    return WikipediaPageQuery.fromJson(json);
  }
}

/// @nodoc
const $WikipediaPageQuery = _$WikipediaPageQueryTearOff();

/// @nodoc
mixin _$WikipediaPageQuery {
  Map<String, WikipediaPage> get pages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikipediaPageQueryCopyWith<WikipediaPageQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikipediaPageQueryCopyWith<$Res> {
  factory $WikipediaPageQueryCopyWith(
          WikipediaPageQuery value, $Res Function(WikipediaPageQuery) then) =
      _$WikipediaPageQueryCopyWithImpl<$Res>;
  $Res call({Map<String, WikipediaPage> pages});
}

/// @nodoc
class _$WikipediaPageQueryCopyWithImpl<$Res>
    implements $WikipediaPageQueryCopyWith<$Res> {
  _$WikipediaPageQueryCopyWithImpl(this._value, this._then);

  final WikipediaPageQuery _value;
  // ignore: unused_field
  final $Res Function(WikipediaPageQuery) _then;

  @override
  $Res call({
    Object? pages = freezed,
  }) {
    return _then(_value.copyWith(
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, WikipediaPage>,
    ));
  }
}

/// @nodoc
abstract class _$WikipediaPageQueryCopyWith<$Res>
    implements $WikipediaPageQueryCopyWith<$Res> {
  factory _$WikipediaPageQueryCopyWith(
          _WikipediaPageQuery value, $Res Function(_WikipediaPageQuery) then) =
      __$WikipediaPageQueryCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, WikipediaPage> pages});
}

/// @nodoc
class __$WikipediaPageQueryCopyWithImpl<$Res>
    extends _$WikipediaPageQueryCopyWithImpl<$Res>
    implements _$WikipediaPageQueryCopyWith<$Res> {
  __$WikipediaPageQueryCopyWithImpl(
      _WikipediaPageQuery _value, $Res Function(_WikipediaPageQuery) _then)
      : super(_value, (v) => _then(v as _WikipediaPageQuery));

  @override
  _WikipediaPageQuery get _value => super._value as _WikipediaPageQuery;

  @override
  $Res call({
    Object? pages = freezed,
  }) {
    return _then(_WikipediaPageQuery(
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as Map<String, WikipediaPage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WikipediaPageQuery
    with DiagnosticableTreeMixin
    implements _WikipediaPageQuery {
  _$_WikipediaPageQuery({this.pages = const <String, WikipediaPage>{}});

  factory _$_WikipediaPageQuery.fromJson(Map<String, dynamic> json) =>
      _$$_WikipediaPageQueryFromJson(json);

  @JsonKey(defaultValue: const <String, WikipediaPage>{})
  @override
  final Map<String, WikipediaPage> pages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WikipediaPageQuery(pages: $pages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WikipediaPageQuery'))
      ..add(DiagnosticsProperty('pages', pages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WikipediaPageQuery &&
            const DeepCollectionEquality().equals(other.pages, pages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pages));

  @JsonKey(ignore: true)
  @override
  _$WikipediaPageQueryCopyWith<_WikipediaPageQuery> get copyWith =>
      __$WikipediaPageQueryCopyWithImpl<_WikipediaPageQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageQueryToJson(this);
  }
}

abstract class _WikipediaPageQuery implements WikipediaPageQuery {
  factory _WikipediaPageQuery({Map<String, WikipediaPage> pages}) =
      _$_WikipediaPageQuery;

  factory _WikipediaPageQuery.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPageQuery.fromJson;

  @override
  Map<String, WikipediaPage> get pages;
  @override
  @JsonKey(ignore: true)
  _$WikipediaPageQueryCopyWith<_WikipediaPageQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

WikipediaPage _$WikipediaPageFromJson(Map<String, dynamic> json) {
  return _WikipediaPage.fromJson(json);
}

/// @nodoc
class _$WikipediaPageTearOff {
  const _$WikipediaPageTearOff();

  _WikipediaPage call({WikipediaPageThumbnail? thumbnail}) {
    return _WikipediaPage(
      thumbnail: thumbnail,
    );
  }

  WikipediaPage fromJson(Map<String, Object?> json) {
    return WikipediaPage.fromJson(json);
  }
}

/// @nodoc
const $WikipediaPage = _$WikipediaPageTearOff();

/// @nodoc
mixin _$WikipediaPage {
  WikipediaPageThumbnail? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikipediaPageCopyWith<WikipediaPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikipediaPageCopyWith<$Res> {
  factory $WikipediaPageCopyWith(
          WikipediaPage value, $Res Function(WikipediaPage) then) =
      _$WikipediaPageCopyWithImpl<$Res>;
  $Res call({WikipediaPageThumbnail? thumbnail});

  $WikipediaPageThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class _$WikipediaPageCopyWithImpl<$Res>
    implements $WikipediaPageCopyWith<$Res> {
  _$WikipediaPageCopyWithImpl(this._value, this._then);

  final WikipediaPage _value;
  // ignore: unused_field
  final $Res Function(WikipediaPage) _then;

  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as WikipediaPageThumbnail?,
    ));
  }

  @override
  $WikipediaPageThumbnailCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $WikipediaPageThumbnailCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value));
    });
  }
}

/// @nodoc
abstract class _$WikipediaPageCopyWith<$Res>
    implements $WikipediaPageCopyWith<$Res> {
  factory _$WikipediaPageCopyWith(
          _WikipediaPage value, $Res Function(_WikipediaPage) then) =
      __$WikipediaPageCopyWithImpl<$Res>;
  @override
  $Res call({WikipediaPageThumbnail? thumbnail});

  @override
  $WikipediaPageThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$WikipediaPageCopyWithImpl<$Res>
    extends _$WikipediaPageCopyWithImpl<$Res>
    implements _$WikipediaPageCopyWith<$Res> {
  __$WikipediaPageCopyWithImpl(
      _WikipediaPage _value, $Res Function(_WikipediaPage) _then)
      : super(_value, (v) => _then(v as _WikipediaPage));

  @override
  _WikipediaPage get _value => super._value as _WikipediaPage;

  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_WikipediaPage(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as WikipediaPageThumbnail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WikipediaPage with DiagnosticableTreeMixin implements _WikipediaPage {
  _$_WikipediaPage({this.thumbnail});

  factory _$_WikipediaPage.fromJson(Map<String, dynamic> json) =>
      _$$_WikipediaPageFromJson(json);

  @override
  final WikipediaPageThumbnail? thumbnail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WikipediaPage(thumbnail: $thumbnail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WikipediaPage'))
      ..add(DiagnosticsProperty('thumbnail', thumbnail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WikipediaPage &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, thumbnail);

  @JsonKey(ignore: true)
  @override
  _$WikipediaPageCopyWith<_WikipediaPage> get copyWith =>
      __$WikipediaPageCopyWithImpl<_WikipediaPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageToJson(this);
  }
}

abstract class _WikipediaPage implements WikipediaPage {
  factory _WikipediaPage({WikipediaPageThumbnail? thumbnail}) =
      _$_WikipediaPage;

  factory _WikipediaPage.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPage.fromJson;

  @override
  WikipediaPageThumbnail? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$WikipediaPageCopyWith<_WikipediaPage> get copyWith =>
      throw _privateConstructorUsedError;
}

WikipediaPageThumbnail _$WikipediaPageThumbnailFromJson(
    Map<String, dynamic> json) {
  return _WikipediaPageThumbnail.fromJson(json);
}

/// @nodoc
class _$WikipediaPageThumbnailTearOff {
  const _$WikipediaPageThumbnailTearOff();

  _WikipediaPageThumbnail call({String source = ''}) {
    return _WikipediaPageThumbnail(
      source: source,
    );
  }

  WikipediaPageThumbnail fromJson(Map<String, Object?> json) {
    return WikipediaPageThumbnail.fromJson(json);
  }
}

/// @nodoc
const $WikipediaPageThumbnail = _$WikipediaPageThumbnailTearOff();

/// @nodoc
mixin _$WikipediaPageThumbnail {
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WikipediaPageThumbnailCopyWith<WikipediaPageThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WikipediaPageThumbnailCopyWith<$Res> {
  factory $WikipediaPageThumbnailCopyWith(WikipediaPageThumbnail value,
          $Res Function(WikipediaPageThumbnail) then) =
      _$WikipediaPageThumbnailCopyWithImpl<$Res>;
  $Res call({String source});
}

/// @nodoc
class _$WikipediaPageThumbnailCopyWithImpl<$Res>
    implements $WikipediaPageThumbnailCopyWith<$Res> {
  _$WikipediaPageThumbnailCopyWithImpl(this._value, this._then);

  final WikipediaPageThumbnail _value;
  // ignore: unused_field
  final $Res Function(WikipediaPageThumbnail) _then;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WikipediaPageThumbnailCopyWith<$Res>
    implements $WikipediaPageThumbnailCopyWith<$Res> {
  factory _$WikipediaPageThumbnailCopyWith(_WikipediaPageThumbnail value,
          $Res Function(_WikipediaPageThumbnail) then) =
      __$WikipediaPageThumbnailCopyWithImpl<$Res>;
  @override
  $Res call({String source});
}

/// @nodoc
class __$WikipediaPageThumbnailCopyWithImpl<$Res>
    extends _$WikipediaPageThumbnailCopyWithImpl<$Res>
    implements _$WikipediaPageThumbnailCopyWith<$Res> {
  __$WikipediaPageThumbnailCopyWithImpl(_WikipediaPageThumbnail _value,
      $Res Function(_WikipediaPageThumbnail) _then)
      : super(_value, (v) => _then(v as _WikipediaPageThumbnail));

  @override
  _WikipediaPageThumbnail get _value => super._value as _WikipediaPageThumbnail;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_WikipediaPageThumbnail(
      source: source == freezed
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WikipediaPageThumbnail
    with DiagnosticableTreeMixin
    implements _WikipediaPageThumbnail {
  _$_WikipediaPageThumbnail({this.source = ''});

  factory _$_WikipediaPageThumbnail.fromJson(Map<String, dynamic> json) =>
      _$$_WikipediaPageThumbnailFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String source;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WikipediaPageThumbnail(source: $source)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WikipediaPageThumbnail'))
      ..add(DiagnosticsProperty('source', source));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WikipediaPageThumbnail &&
            (identical(other.source, source) || other.source == source));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source);

  @JsonKey(ignore: true)
  @override
  _$WikipediaPageThumbnailCopyWith<_WikipediaPageThumbnail> get copyWith =>
      __$WikipediaPageThumbnailCopyWithImpl<_WikipediaPageThumbnail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageThumbnailToJson(this);
  }
}

abstract class _WikipediaPageThumbnail implements WikipediaPageThumbnail {
  factory _WikipediaPageThumbnail({String source}) = _$_WikipediaPageThumbnail;

  factory _WikipediaPageThumbnail.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPageThumbnail.fromJson;

  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$WikipediaPageThumbnailCopyWith<_WikipediaPageThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}
