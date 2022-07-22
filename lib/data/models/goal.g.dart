// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Goal _$$_GoalFromJson(Map<String, dynamic> json) => _$_Goal(
      id: json['id'] as String? ?? '',
      goal: json['goal'] as String? ?? '',
      intenseGoal: json['intenseGoal'] as int? ?? 0,
      timeGoal: json['timeGoal'] as int? ?? 0,
      editDate: json['editDate'] as String? ?? '',
      initialDate: json['initialDate'] as String? ?? '',
      color: json['color'] as int? ?? -1,
      eventGoogleId: json['eventGoogleId'] as String? ?? '',
      wasAcceptedToday: json['wasAcceptedToday'] as bool? ?? false,
      isFinished: json['isFinished'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GoalToJson(_$_Goal instance) => <String, dynamic>{
      'id': instance.id,
      'goal': instance.goal,
      'intenseGoal': instance.intenseGoal,
      'timeGoal': instance.timeGoal,
      'editDate': instance.editDate,
      'initialDate': instance.initialDate,
      'color': instance.color,
      'eventGoogleId': instance.eventGoogleId,
      'wasAcceptedToday': instance.wasAcceptedToday,
      'isFinished': instance.isFinished,
    };
