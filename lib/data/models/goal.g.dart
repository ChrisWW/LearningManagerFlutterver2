// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Goal _$$_GoalFromJson(Map<String, dynamic> json) => _$_Goal(
      id: json['id'] as String? ?? '',
      goal: json['goal'] as String? ?? '',
      intensegoal: json['intensegoal'] as String? ?? '0',
      timegoal: json['timegoal'] as String? ?? '0',
      editdate: json['editdate'] as String? ?? '',
      initialdate: json['initialdate'] as String? ?? '0',
      color: json['color'] as int? ?? -1,
      expanded: json['expanded'] as bool? ?? false,
      eventgoogleid: json['eventgoogleid'] as int? ?? -1,
      wasAcceptedToday: json['wasAcceptedToday'] as bool? ?? false,
      isFinished: json['isFinished'] as bool? ?? false,
    );

Map<String, dynamic> _$$_GoalToJson(_$_Goal instance) => <String, dynamic>{
      'id': instance.id,
      'goal': instance.goal,
      'intensegoal': instance.intensegoal,
      'timegoal': instance.timegoal,
      'editdate': instance.editdate,
      'initialdate': instance.initialdate,
      'color': instance.color,
      'expanded': instance.expanded,
      'eventgoogleid': instance.eventgoogleid,
      'wasAcceptedToday': instance.wasAcceptedToday,
      'isFinished': instance.isFinished,
    };
