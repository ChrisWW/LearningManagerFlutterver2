// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Goals _$GoalsFromJson(Map<String, dynamic> json) {
  return _Goals.fromJson(json);
}

/// @nodoc
mixin _$Goals {
  List<Goal> get goals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalsCopyWith<Goals> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalsCopyWith<$Res> {
  factory $GoalsCopyWith(Goals value, $Res Function(Goals) then) =
      _$GoalsCopyWithImpl<$Res>;
  $Res call({List<Goal> goals});
}

/// @nodoc
class _$GoalsCopyWithImpl<$Res> implements $GoalsCopyWith<$Res> {
  _$GoalsCopyWithImpl(this._value, this._then);

  final Goals _value;
  // ignore: unused_field
  final $Res Function(Goals) _then;

  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(_value.copyWith(
      goals: goals == freezed
          ? _value.goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
    ));
  }
}

/// @nodoc
abstract class _$$_GoalsCopyWith<$Res> implements $GoalsCopyWith<$Res> {
  factory _$$_GoalsCopyWith(_$_Goals value, $Res Function(_$_Goals) then) =
      __$$_GoalsCopyWithImpl<$Res>;
  @override
  $Res call({List<Goal> goals});
}

/// @nodoc
class __$$_GoalsCopyWithImpl<$Res> extends _$GoalsCopyWithImpl<$Res>
    implements _$$_GoalsCopyWith<$Res> {
  __$$_GoalsCopyWithImpl(_$_Goals _value, $Res Function(_$_Goals) _then)
      : super(_value, (v) => _then(v as _$_Goals));

  @override
  _$_Goals get _value => super._value as _$_Goals;

  @override
  $Res call({
    Object? goals = freezed,
  }) {
    return _then(_$_Goals(
      goals: goals == freezed
          ? _value._goals
          : goals // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Goals extends _Goals with DiagnosticableTreeMixin {
  _$_Goals({final List<Goal> goals = const <Goal>[]})
      : _goals = goals,
        super._();

  factory _$_Goals.fromJson(Map<String, dynamic> json) =>
      _$$_GoalsFromJson(json);

  final List<Goal> _goals;
  @override
  @JsonKey()
  List<Goal> get goals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goals);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Goals(goals: $goals)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Goals'))
      ..add(DiagnosticsProperty('goals', goals));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Goals &&
            const DeepCollectionEquality().equals(other._goals, _goals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_goals));

  @JsonKey(ignore: true)
  @override
  _$$_GoalsCopyWith<_$_Goals> get copyWith =>
      __$$_GoalsCopyWithImpl<_$_Goals>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalsToJson(this);
  }
}

abstract class _Goals extends Goals {
  factory _Goals({final List<Goal> goals}) = _$_Goals;
  _Goals._() : super._();

  factory _Goals.fromJson(Map<String, dynamic> json) = _$_Goals.fromJson;

  @override
  List<Goal> get goals;
  @override
  @JsonKey(ignore: true)
  _$$_GoalsCopyWith<_$_Goals> get copyWith =>
      throw _privateConstructorUsedError;
}

Goal _$GoalFromJson(Map<String, dynamic> json) {
  return _Goal.fromJson(json);
}

/// @nodoc
mixin _$Goal {
  String get id => throw _privateConstructorUsedError;
  String get goal => throw _privateConstructorUsedError;
  set goal(String value) => throw _privateConstructorUsedError;
  int get intenseGoal => throw _privateConstructorUsedError;
  set intenseGoal(int value) => throw _privateConstructorUsedError;
  int get timeGoal => throw _privateConstructorUsedError;
  set timeGoal(int value) => throw _privateConstructorUsedError;
  String get editDate => throw _privateConstructorUsedError;
  set editDate(String value) => throw _privateConstructorUsedError;
  String get initialDate => throw _privateConstructorUsedError;
  set initialDate(String value) => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  set color(int value) => throw _privateConstructorUsedError;
  String get eventGoogleId => throw _privateConstructorUsedError;
  set eventGoogleId(String value) => throw _privateConstructorUsedError;
  bool get wasAcceptedToday => throw _privateConstructorUsedError;
  set wasAcceptedToday(bool value) => throw _privateConstructorUsedError;
  bool get isFinished => throw _privateConstructorUsedError;
  set isFinished(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalCopyWith<Goal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalCopyWith<$Res> {
  factory $GoalCopyWith(Goal value, $Res Function(Goal) then) =
      _$GoalCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String goal,
      int intenseGoal,
      int timeGoal,
      String editDate,
      String initialDate,
      int color,
      String eventGoogleId,
      bool wasAcceptedToday,
      bool isFinished});
}

/// @nodoc
class _$GoalCopyWithImpl<$Res> implements $GoalCopyWith<$Res> {
  _$GoalCopyWithImpl(this._value, this._then);

  final Goal _value;
  // ignore: unused_field
  final $Res Function(Goal) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? goal = freezed,
    Object? intenseGoal = freezed,
    Object? timeGoal = freezed,
    Object? editDate = freezed,
    Object? initialDate = freezed,
    Object? color = freezed,
    Object? eventGoogleId = freezed,
    Object? wasAcceptedToday = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      intenseGoal: intenseGoal == freezed
          ? _value.intenseGoal
          : intenseGoal // ignore: cast_nullable_to_non_nullable
              as int,
      timeGoal: timeGoal == freezed
          ? _value.timeGoal
          : timeGoal // ignore: cast_nullable_to_non_nullable
              as int,
      editDate: editDate == freezed
          ? _value.editDate
          : editDate // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: initialDate == freezed
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      eventGoogleId: eventGoogleId == freezed
          ? _value.eventGoogleId
          : eventGoogleId // ignore: cast_nullable_to_non_nullable
              as String,
      wasAcceptedToday: wasAcceptedToday == freezed
          ? _value.wasAcceptedToday
          : wasAcceptedToday // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_GoalCopyWith<$Res> implements $GoalCopyWith<$Res> {
  factory _$$_GoalCopyWith(_$_Goal value, $Res Function(_$_Goal) then) =
      __$$_GoalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String goal,
      int intenseGoal,
      int timeGoal,
      String editDate,
      String initialDate,
      int color,
      String eventGoogleId,
      bool wasAcceptedToday,
      bool isFinished});
}

/// @nodoc
class __$$_GoalCopyWithImpl<$Res> extends _$GoalCopyWithImpl<$Res>
    implements _$$_GoalCopyWith<$Res> {
  __$$_GoalCopyWithImpl(_$_Goal _value, $Res Function(_$_Goal) _then)
      : super(_value, (v) => _then(v as _$_Goal));

  @override
  _$_Goal get _value => super._value as _$_Goal;

  @override
  $Res call({
    Object? id = freezed,
    Object? goal = freezed,
    Object? intenseGoal = freezed,
    Object? timeGoal = freezed,
    Object? editDate = freezed,
    Object? initialDate = freezed,
    Object? color = freezed,
    Object? eventGoogleId = freezed,
    Object? wasAcceptedToday = freezed,
    Object? isFinished = freezed,
  }) {
    return _then(_$_Goal(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as String,
      intenseGoal: intenseGoal == freezed
          ? _value.intenseGoal
          : intenseGoal // ignore: cast_nullable_to_non_nullable
              as int,
      timeGoal: timeGoal == freezed
          ? _value.timeGoal
          : timeGoal // ignore: cast_nullable_to_non_nullable
              as int,
      editDate: editDate == freezed
          ? _value.editDate
          : editDate // ignore: cast_nullable_to_non_nullable
              as String,
      initialDate: initialDate == freezed
          ? _value.initialDate
          : initialDate // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      eventGoogleId: eventGoogleId == freezed
          ? _value.eventGoogleId
          : eventGoogleId // ignore: cast_nullable_to_non_nullable
              as String,
      wasAcceptedToday: wasAcceptedToday == freezed
          ? _value.wasAcceptedToday
          : wasAcceptedToday // ignore: cast_nullable_to_non_nullable
              as bool,
      isFinished: isFinished == freezed
          ? _value.isFinished
          : isFinished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Goal with DiagnosticableTreeMixin implements _Goal {
  _$_Goal(
      {this.id = '',
      this.goal = '',
      this.intenseGoal = 0,
      this.timeGoal = 0,
      this.editDate = '',
      this.initialDate = '',
      this.color = -1,
      this.eventGoogleId = '',
      this.wasAcceptedToday = false,
      this.isFinished = false});

  factory _$_Goal.fromJson(Map<String, dynamic> json) => _$$_GoalFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  String goal;
  @override
  @JsonKey()
  int intenseGoal;
  @override
  @JsonKey()
  int timeGoal;
  @override
  @JsonKey()
  String editDate;
  @override
  @JsonKey()
  String initialDate;
  @override
  @JsonKey()
  int color;
  @override
  @JsonKey()
  String eventGoogleId;
  @override
  @JsonKey()
  bool wasAcceptedToday;
  @override
  @JsonKey()
  bool isFinished;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Goal(id: $id, goal: $goal, intenseGoal: $intenseGoal, timeGoal: $timeGoal, editDate: $editDate, initialDate: $initialDate, color: $color, eventGoogleId: $eventGoogleId, wasAcceptedToday: $wasAcceptedToday, isFinished: $isFinished)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Goal'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('goal', goal))
      ..add(DiagnosticsProperty('intenseGoal', intenseGoal))
      ..add(DiagnosticsProperty('timeGoal', timeGoal))
      ..add(DiagnosticsProperty('editDate', editDate))
      ..add(DiagnosticsProperty('initialDate', initialDate))
      ..add(DiagnosticsProperty('color', color))
      ..add(DiagnosticsProperty('eventGoogleId', eventGoogleId))
      ..add(DiagnosticsProperty('wasAcceptedToday', wasAcceptedToday))
      ..add(DiagnosticsProperty('isFinished', isFinished));
  }

  @JsonKey(ignore: true)
  @override
  _$$_GoalCopyWith<_$_Goal> get copyWith =>
      __$$_GoalCopyWithImpl<_$_Goal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalToJson(this);
  }
}

abstract class _Goal implements Goal {
  factory _Goal(
      {final String id,
      String goal,
      int intenseGoal,
      int timeGoal,
      String editDate,
      String initialDate,
      int color,
      String eventGoogleId,
      bool wasAcceptedToday,
      bool isFinished}) = _$_Goal;

  factory _Goal.fromJson(Map<String, dynamic> json) = _$_Goal.fromJson;

  @override
  String get id;
  @override
  String get goal;
  set goal(String value);
  @override
  int get intenseGoal;
  set intenseGoal(int value);
  @override
  int get timeGoal;
  set timeGoal(int value);
  @override
  String get editDate;
  set editDate(String value);
  @override
  String get initialDate;
  set initialDate(String value);
  @override
  int get color;
  set color(int value);
  @override
  String get eventGoogleId;
  set eventGoogleId(String value);
  @override
  bool get wasAcceptedToday;
  set wasAcceptedToday(bool value);
  @override
  bool get isFinished;
  set isFinished(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_GoalCopyWith<_$_Goal> get copyWith => throw _privateConstructorUsedError;
}
