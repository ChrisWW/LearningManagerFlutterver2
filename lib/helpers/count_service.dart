import 'dart:core';

import 'package:easy_localization/easy_localization.dart';

class CountService {
  static double? getProgressPercentages(String timeGoalDays, String initData) {
    var oneDayEpoch = double.parse("86400000");
    var now = DateTime.now().millisecondsSinceEpoch;
    var stringInitData = initData.toString();
    var stringTimeGoalDays = timeGoalDays.toString();
    var endData = (double.parse(stringInitData) +
        double.parse(stringTimeGoalDays) * oneDayEpoch);
    var days = ((endData - now) / (oneDayEpoch));

    var percentageValue = ((double.parse(stringTimeGoalDays) - days) /
        double.parse(stringTimeGoalDays));
    if (percentageValue >= 1) {
      return double.parse("100");
    }
    var df = NumberFormat("#.##");
    return double.parse(df.format(percentageValue));
  }

  static String getDaysLeft(String timeGoalDays, String initData) {
    final oneDayEpoch = 86400000.toDouble();
    final now = DateTime.now().millisecondsSinceEpoch;
    var stringInitData = initData.toString();
    var stringTimeGoalDays = timeGoalDays.toString();
    final endData = (double.parse(stringInitData) +
        double.parse(stringTimeGoalDays) * oneDayEpoch);
    var days = ((endData - now) / (oneDayEpoch));
    var df = NumberFormat("#.##");
    var daysRoundOff = df.format(days);
    if ((days.toInt()) >= int.parse(stringTimeGoalDays) || days.toInt() <= 0) {
      return "0";
    } else {
      return daysRoundOff.toString();
    }
  }



  static double countHour(String initData, String perDay, String timeGoalDays) {
    var oneDayEpoch = 86400000.toDouble();
    var stringInitData = initData.toString();
    var stringTimeGoalDays = timeGoalDays.toString();
    var stringperDay = perDay.toString();
    var initialDateDouble = double.parse(stringInitData);
    final now = DateTime.now().millisecondsSinceEpoch;

    var hours = ((now - initialDateDouble) / (oneDayEpoch) + double.parse(getDaysLeft(stringTimeGoalDays, stringInitData))) *
        ((double.parse(stringperDay) / 60).toDouble());
    var df = NumberFormat("#.##");
    var value = double.parse(df.format(hours));
    var borderValue = ((double.parse(stringperDay) / 60).toDouble()) *
        double.parse(stringTimeGoalDays);
    if (value >= borderValue) {
      return double.parse(df.format(borderValue));
    }
    return value;
  }

  static double countHourDone(
    String initData,
    String perDay,
  ) {
    var oneDayEpoch = 86400000.toDouble();
    var stringperDay = perDay.toString();
    var stringInitData = initData.toString();
    var initialDateDouble = double.parse(stringInitData);
    final now = DateTime.now().millisecondsSinceEpoch;

    var hours = ((now - initialDateDouble) / (oneDayEpoch)) *
        (double.parse(stringperDay) / 60);
    var df = NumberFormat("#.##");
    return double.parse(df.format(hours));
  }
}
