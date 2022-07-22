// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wikipedia_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WikipediaPageResponse _$WikipediaPageResponseFromJson(
    Map<String, dynamic> json) {
  return _WikipediaPageResponse.fromJson(json);
}

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
abstract class _$$_WikipediaPageResponseCopyWith<$Res>
    implements $WikipediaPageResponseCopyWith<$Res> {
  factory _$$_WikipediaPageResponseCopyWith(_$_WikipediaPageResponse value,
          $Res Function(_$_WikipediaPageResponse) then) =
      __$$_WikipediaPageResponseCopyWithImpl<$Res>;
  @override
  $Res call({WikipediaPageQuery? query});

  @override
  $WikipediaPageQueryCopyWith<$Res>? get query;
}

/// @nodoc
class __$$_WikipediaPageResponseCopyWithImpl<$Res>
    extends _$WikipediaPageResponseCopyWithImpl<$Res>
    implements _$$_WikipediaPageResponseCopyWith<$Res> {
  __$$_WikipediaPageResponseCopyWithImpl(_$_WikipediaPageResponse _value,
      $Res Function(_$_WikipediaPageResponse) _then)
      : super(_value, (v) => _then(v as _$_WikipediaPageResponse));

  @override
  _$_WikipediaPageResponse get _value =>
      super._value as _$_WikipediaPageResponse;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_WikipediaPageResponse(
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
            other is _$_WikipediaPageResponse &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_WikipediaPageResponseCopyWith<_$_WikipediaPageResponse> get copyWith =>
      __$$_WikipediaPageResponseCopyWithImpl<_$_WikipediaPageResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageResponseToJson(this);
  }
}

abstract class _WikipediaPageResponse implements WikipediaPageResponse {
  factory _WikipediaPageResponse({final WikipediaPageQuery? query}) =
      _$_WikipediaPageResponse;

  factory _WikipediaPageResponse.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPageResponse.fromJson;

  @override
  WikipediaPageQuery? get query;
  @override
  @JsonKey(ignore: true)
  _$$_WikipediaPageResponseCopyWith<_$_WikipediaPageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

WikipediaPageQuery _$WikipediaPageQueryFromJson(Map<String, dynamic> json) {
  return _WikipediaPageQuery.fromJson(json);
}

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
abstract class _$$_WikipediaPageQueryCopyWith<$Res>
    implements $WikipediaPageQueryCopyWith<$Res> {
  factory _$$_WikipediaPageQueryCopyWith(_$_WikipediaPageQuery value,
          $Res Function(_$_WikipediaPageQuery) then) =
      __$$_WikipediaPageQueryCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, WikipediaPage> pages});
}

/// @nodoc
class __$$_WikipediaPageQueryCopyWithImpl<$Res>
    extends _$WikipediaPageQueryCopyWithImpl<$Res>
    implements _$$_WikipediaPageQueryCopyWith<$Res> {
  __$$_WikipediaPageQueryCopyWithImpl(
      _$_WikipediaPageQuery _value, $Res Function(_$_WikipediaPageQuery) _then)
      : super(_value, (v) => _then(v as _$_WikipediaPageQuery));

  @override
  _$_WikipediaPageQuery get _value => super._value as _$_WikipediaPageQuery;

  @override
  $Res call({
    Object? pages = freezed,
  }) {
    return _then(_$_WikipediaPageQuery(
      pages: pages == freezed
          ? _value._pages
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
  _$_WikipediaPageQuery(
      {final Map<String, WikipediaPage> pages =
          const <String, WikipediaPage>{}})
      : _pages = pages;

  factory _$_WikipediaPageQuery.fromJson(Map<String, dynamic> json) =>
      _$$_WikipediaPageQueryFromJson(json);

  final Map<String, WikipediaPage> _pages;
  @override
  @JsonKey()
  Map<String, WikipediaPage> get pages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_pages);
  }

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
            other is _$_WikipediaPageQuery &&
            const DeepCollectionEquality().equals(other._pages, _pages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_pages));

  @JsonKey(ignore: true)
  @override
  _$$_WikipediaPageQueryCopyWith<_$_WikipediaPageQuery> get copyWith =>
      __$$_WikipediaPageQueryCopyWithImpl<_$_WikipediaPageQuery>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageQueryToJson(this);
  }
}

abstract class _WikipediaPageQuery implements WikipediaPageQuery {
  factory _WikipediaPageQuery({final Map<String, WikipediaPage> pages}) =
      _$_WikipediaPageQuery;

  factory _WikipediaPageQuery.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPageQuery.fromJson;

  @override
  Map<String, WikipediaPage> get pages;
  @override
  @JsonKey(ignore: true)
  _$$_WikipediaPageQueryCopyWith<_$_WikipediaPageQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

WikipediaPage _$WikipediaPageFromJson(Map<String, dynamic> json) {
  return _WikipediaPage.fromJson(json);
}

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
abstract class _$$_WikipediaPageCopyWith<$Res>
    implements $WikipediaPageCopyWith<$Res> {
  factory _$$_WikipediaPageCopyWith(
          _$_WikipediaPage value, $Res Function(_$_WikipediaPage) then) =
      __$$_WikipediaPageCopyWithImpl<$Res>;
  @override
  $Res call({WikipediaPageThumbnail? thumbnail});

  @override
  $WikipediaPageThumbnailCopyWith<$Res>? get thumbnail;
}

/// @nodoc
class __$$_WikipediaPageCopyWithImpl<$Res>
    extends _$WikipediaPageCopyWithImpl<$Res>
    implements _$$_WikipediaPageCopyWith<$Res> {
  __$$_WikipediaPageCopyWithImpl(
      _$_WikipediaPage _value, $Res Function(_$_WikipediaPage) _then)
      : super(_value, (v) => _then(v as _$_WikipediaPage));

  @override
  _$_WikipediaPage get _value => super._value as _$_WikipediaPage;

  @override
  $Res call({
    Object? thumbnail = freezed,
  }) {
    return _then(_$_WikipediaPage(
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
            other is _$_WikipediaPage &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(thumbnail));

  @JsonKey(ignore: true)
  @override
  _$$_WikipediaPageCopyWith<_$_WikipediaPage> get copyWith =>
      __$$_WikipediaPageCopyWithImpl<_$_WikipediaPage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageToJson(this);
  }
}

abstract class _WikipediaPage implements WikipediaPage {
  factory _WikipediaPage({final WikipediaPageThumbnail? thumbnail}) =
      _$_WikipediaPage;

  factory _WikipediaPage.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPage.fromJson;

  @override
  WikipediaPageThumbnail? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_WikipediaPageCopyWith<_$_WikipediaPage> get copyWith =>
      throw _privateConstructorUsedError;
}

WikipediaPageThumbnail _$WikipediaPageThumbnailFromJson(
    Map<String, dynamic> json) {
  return _WikipediaPageThumbnail.fromJson(json);
}

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
abstract class _$$_WikipediaPageThumbnailCopyWith<$Res>
    implements $WikipediaPageThumbnailCopyWith<$Res> {
  factory _$$_WikipediaPageThumbnailCopyWith(_$_WikipediaPageThumbnail value,
          $Res Function(_$_WikipediaPageThumbnail) then) =
      __$$_WikipediaPageThumbnailCopyWithImpl<$Res>;
  @override
  $Res call({String source});
}

/// @nodoc
class __$$_WikipediaPageThumbnailCopyWithImpl<$Res>
    extends _$WikipediaPageThumbnailCopyWithImpl<$Res>
    implements _$$_WikipediaPageThumbnailCopyWith<$Res> {
  __$$_WikipediaPageThumbnailCopyWithImpl(_$_WikipediaPageThumbnail _value,
      $Res Function(_$_WikipediaPageThumbnail) _then)
      : super(_value, (v) => _then(v as _$_WikipediaPageThumbnail));

  @override
  _$_WikipediaPageThumbnail get _value =>
      super._value as _$_WikipediaPageThumbnail;

  @override
  $Res call({
    Object? source = freezed,
  }) {
    return _then(_$_WikipediaPageThumbnail(
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

  @override
  @JsonKey()
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
            other is _$_WikipediaPageThumbnail &&
            const DeepCollectionEquality().equals(other.source, source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(source));

  @JsonKey(ignore: true)
  @override
  _$$_WikipediaPageThumbnailCopyWith<_$_WikipediaPageThumbnail> get copyWith =>
      __$$_WikipediaPageThumbnailCopyWithImpl<_$_WikipediaPageThumbnail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WikipediaPageThumbnailToJson(this);
  }
}

abstract class _WikipediaPageThumbnail implements WikipediaPageThumbnail {
  factory _WikipediaPageThumbnail({final String source}) =
      _$_WikipediaPageThumbnail;

  factory _WikipediaPageThumbnail.fromJson(Map<String, dynamic> json) =
      _$_WikipediaPageThumbnail.fromJson;

  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$_WikipediaPageThumbnailCopyWith<_$_WikipediaPageThumbnail> get copyWith =>
      throw _privateConstructorUsedError;
}
