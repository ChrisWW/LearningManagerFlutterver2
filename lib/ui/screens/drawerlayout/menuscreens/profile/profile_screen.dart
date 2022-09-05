import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/profile/profile_bloc.dart';
import 'package:flutter_production_boilerplate/ui/widgets/goals/goals_expansion_panel_list.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late ProfileBloc bloc;
  late AnimationController controller;

  TextEditingController goalTitle = TextEditingController();
  TextEditingController goalDescription = TextEditingController();
  TextEditingController date = TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();

  int allGoalsAmount = 0;
  int doneGoalsAmount = 0;
  int allInspirationsAmount = 0;
  int notesAmount = 0;
  double hoursDone = 0.0;
  double hoursAll = 0.0;
  double percentageValue = 0.0;

  @override
  void initState() {
    super.initState();
    bloc = ProfileBloc.create(context)
      ..add(const GetDataEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      bloc: bloc,
      builder: (BuildContext context, ProfileState state) {
        if (state is! ShowDataState) {
          return const Text('Error');
        } else {
          initializeVariables(state);
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              actionsIconTheme: const IconThemeData(color: Colors.black),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  TextFormField(
                    controller: goalDescription,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      hintText:
                      "You've done $doneGoalsAmount / $allGoalsAmount goals so far.",
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: goalDescription,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Total hours on tasks: $hoursDone / $hoursAll",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: ProgressBar(
                      value: percentageValue,
                    ),
                  ),
                  TextFormField(
                    controller: goalDescription,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      hintText:
                      "You've saved $allInspirationsAmount inspirations.",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: goalDescription,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "You've saved $notesAmount notes.",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      const SizedBox(width: 10), //SizedBox
                      const Text(
                        'Enable notifications in SetGoals',
                        style: TextStyle(fontSize: 20),
                      ), //Text
                      const SizedBox(width: 10), //SizedBox
                      Checkbox(
                        value: valueSecond,
                        onChanged: (valueSecond) {
                          setState(() {
                            this.valueSecond = valueSecond!;
                          });
                        },
                      ), //Checkbox
                    ], //<Widget>[]
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  void initializeVariables(ProfileState state) {
    if (state is ShowDataState) {
      allGoalsAmount = state.goals.goals.length;
      doneGoalsAmount =
          state.goals.goals
              .where((g) => g.isProgressFinished)
              .length;
      notesAmount = state.notes.notes.length;
      allInspirationsAmount = state.inspirations.inspirations.length;
      state.goals.goals.forEach((g) => {hoursAll = hoursAll + g.totalHours});
      state.goals.goals.forEach((g) => {hoursDone = hoursDone + g.doneHours});
      percentageValue = hoursDone / hoursAll;
    }
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }
}
