import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/profile/profile_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';

class AddEditMyInspirationScreenArgs {
  final Inspiration? inspiration;

  const AddEditMyInspirationScreenArgs(this.inspiration);
}

class AddEditMyInspirationScreen extends StatefulWidget {
  static const String route = '/addEditMyInspirations';

  const AddEditMyInspirationScreen({Key? key}) : super(key: key);

  @override
  State<AddEditMyInspirationScreen> createState() =>
      _AddEditMyInspirationScreenState();
}

class _AddEditMyInspirationScreenState
    extends State<AddEditMyInspirationScreen> {
  TextEditingController inspirationTitle = TextEditingController();
  TextEditingController inspirationDescription = TextEditingController();
  TextEditingController date = new TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocListener<MyInspirationsBloc, MyInspirationsState>(
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
            // TODO check bloc provider to inspiration
            IconButton(
              onPressed: () {
                BlocProvider.of<MyInspirationsBloc>(context).add(
                  AddMyInspiration(
                    Inspiration(
                      id: UniqueKey().hashCode.toString(),
                      title: inspirationTitle.value.text,
                      description: DateTime.now().toString(),
                      imageUrl: 0.toString(),
                      date: DateTime.now().millisecondsSinceEpoch.toString(),
                      authorQuote: "",
                      quote: "",
                      localization: "",
                    ),
                  ),
                );
              },
              icon: const Icon(
                Icons.save,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              //title
              TextFormField(
                controller: inspirationTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                decoration: const InputDecoration(
                  hintText: "Inspiration title",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              TextFormField(
                controller: inspirationDescription,
                style: const TextStyle(fontSize: 16, color: Colors.black),
                decoration: const InputDecoration(
                  hintText: "Description",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("on clicked image");
                }, // Image tapped
                child: Image.asset(
                  'img/gif_clickme.gif',
                  fit: BoxFit.cover, // Fixes border issues
                ),
              ),
              ElevatedButton(
                child: Text('Accept Picture'),
                onPressed: () {
                  print('Accept picture and save it in storage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
