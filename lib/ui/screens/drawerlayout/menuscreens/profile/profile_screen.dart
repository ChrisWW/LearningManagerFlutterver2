import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/profile/profile_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/ui/widgets/goals/goals_expansion_panel_list.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}



class _ProfileScreenState extends State<ProfileScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  TextEditingController goalTitle = TextEditingController();
  TextEditingController goalDescription = TextEditingController();
  TextEditingController date = new TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();


  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        // if (state is ShowGoalsState) {
        //   Navigator.pop(context);
        //   print("SHOW");
        // } else if (state is ErrorGoalsState) {
        //   print("ERROR");
        // }
      },
      child: Scaffold(
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
                style: const TextStyle(fontSize: 20, color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "You've done 2 / 4 goals so far.",
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
                style: const TextStyle(fontSize: 20, color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Total hours on tasks: 25 / 40",
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
                    value: double.parse("60") / 100,
                  ),
                ),
              TextFormField(
                controller: goalDescription,
                style: const TextStyle(fontSize: 20, color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "You've saved 3 inspirations.",
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
                style: const TextStyle(fontSize: 20, color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "You've saved 4 notes.",
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
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Enable notifications in SetGoals',
                    style: TextStyle(fontSize: 20),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.valueSecond,
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
      ),
    );
  }
}
