import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';

import '../base/base_repository.dart';

class GoalsRepository extends BaseRepository {

  GoalsRepository() : super();

  Future<Goal> loadGoalsData() async {
    final Goal goal = Goal();
    // load from database
// add id itd.
    return goal;
  }

//   Future<List<Goal>> loadGoalsData() async {
//     final Goal goal = Goal();
//     // load from database
// // add id itd.
//     List<Goal> myList = <Goal>[goal, goal];
//     return myList;
//   }

  // how to add here data return?
  Future<Goal> addGoal() async {
    final Goal goal = Goal();
    return goal;
}
}