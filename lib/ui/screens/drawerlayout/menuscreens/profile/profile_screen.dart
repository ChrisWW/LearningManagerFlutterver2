import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/profile/profile_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';

class ProfileScreen extends StatefulWidget {
  static const String route = '/profile';

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController goalTitle = TextEditingController();
  TextEditingController goalDescription = TextEditingController();
  TextEditingController date = new TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();

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
          actions: [
            IconButton(
              onPressed: () {
                BlocProvider.of<GoalsBloc>(context).add(
                  AddGoal(
                    Goal(
                        id: UniqueKey().hashCode.toString(),
                        goal: goalTitle.value.text,
                        editDate: DateTime.now().toString(),
                        eventGoogleId: 0.toString(),
                        initialDate:
                        DateTime.now().millisecondsSinceEpoch.toString(),
                        intenseGoal: int.parse(goalDescription.value.text),
                        timeGoal: int.parse(date.value.text),
                        wasAcceptedToday: true,
                        isFinished: false,
                        color: -1),
                  ),
                );
              },
              icon: const Icon(
                Icons.save,
              ),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 100,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 2.0,
              blurRadius: 8.0,
            )
          ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.5),
                              spreadRadius: 2.0,
                              blurRadius: 8.0,
                            )
                          ]),
                      padding: const EdgeInsets.all(10.0),
                      child: const Icon(
                        Icons.check,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              //title
              TextFormField(
                controller: goalTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: "Enter title",
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
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "How many minutes per day?",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              GestureDetector(
                // onTap:
                child: AbsorbPointer(
                  child: TextFormField(
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                    controller: date,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: 'How long set your goal in days?',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.only(left: 12.5),
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Save in Google Calendar',
                    style: TextStyle(fontSize: 16.0),
                  ), //Text
                  SizedBox(width: 10), //SizedBox
                  /** Checkbox Widget **/
                  Checkbox(
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ), //Checkbox
                ], //<Widget>[]
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ), //SizedBox
                  Text(
                    'Additional one day when daily is not done',
                    style: TextStyle(fontSize: 16.0),
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
