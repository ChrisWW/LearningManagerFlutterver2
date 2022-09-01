import 'package:workmanager/workmanager.dart';

void _callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print("*** Workmanager $task starts execution...");

    switch (task) {
      case MyWorkManager.periodicTask:
        print("*** ${MyWorkManager.periodicTask} was executed");
        break;
      default:
        break;
    }

    print("*** Workmanager $task finishes execution...");

    return Future.value(true);
  });
}

class MyWorkManager {
  static const String periodicTask =
      "com.app.learningmanagerflutter.periodicTask";

  static void initialize() {
    Workmanager().initialize(
      _callbackDispatcher,
      isInDebugMode: true,
    );

    print("*** Workmanager initialized.");
  }

  static void registerPeriodicTask() {
    Workmanager().registerPeriodicTask(
      periodicTask,
      periodicTask,
      frequency: const Duration(minutes: 15),
    );

    print("*** Workmanager periodic task $periodicTask was registered.");
  }

  static Future<void> cancelAll() => Workmanager().cancelAll();
}
