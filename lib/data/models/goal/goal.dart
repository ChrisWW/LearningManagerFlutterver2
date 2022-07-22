import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal.freezed.dart';
part 'goal.g.dart';

@freezed
class Goal with _$Goal {
  factory Goal({
    @Default('') String id,
    @Default('') String goal,
    @Default(0) int intenseGoal,
    @Default(0) int timeGoal,
    @Default('') String editDate,
    @Default('') String initialDate,
    @Default(-1) int color,
    @Default('') String eventGoogleId,
    @Default(false) bool wasAcceptedToday,
    @Default(false) bool isFinished,
  }) = _Goal;

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);
}
