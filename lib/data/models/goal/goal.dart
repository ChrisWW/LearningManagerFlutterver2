import 'package:flutter/foundation.dart';
import 'package:flutter_production_boilerplate/helpers/count_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'goal.freezed.dart';

part 'goal.g.dart';

@freezed
class Goals with _$Goals {
  factory Goals({
    @Default(<Goal>[]) List<Goal> goals,
  }) = _Goals;

  Goals._();

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);

  static Goals empty() => Goals(goals: <Goal>[]);
}

@unfreezed
class Goal with _$Goal {
  factory Goal({
    @Default('') final String id,
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

  const Goal._();

  factory Goal.fromJson(Map<String, dynamic> json) => _$GoalFromJson(json);

  double get progressPercentage =>
      CountService.getProgressPercentages(timeGoal.toString(), initialDate) ??
      0;

  bool get isProgressFinished => progressPercentage >= 100;
}
