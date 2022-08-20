import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/ui/screens/goals/product.dart';

class AddEditNoteScreen extends StatefulWidget {
  static const String route = '/addEditNotes';

  const AddEditNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}
// TODO goals
// class _AddEditGoalScreenState extends State<AddEditGoalScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:todo_app/model/list_model.dart';
//
// class Addtodo extends StatefulWidget {
//   const Addtodo({Key? key}) : super(key: key);
//
//   @override
//   _AddtodoState createState() => _AddtodoState();
// }

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  TextEditingController noteTitle = TextEditingController();
  TextEditingController noteDescription = TextEditingController();
  TextEditingController date = new TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocListener<NotesBloc, NotesState>(
      listener: (context, state) {
        // do stuff here based on BlocA's state
        // do zmiany stanow, nawigacji listener, setState
        if (state is ShowNotesState) {
          Navigator.pop(context);
          print("SHOW");
        } else if (state is ErrorNotesState) {
          print("ERROR");
        }
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
                BlocProvider.of<NotesBloc>(context).add(
                  AddNote(
                    Note(
                        id: DateTime.now().millisecondsSinceEpoch.toString(),
                        title: noteTitle.value.text,
                        date: DateTime.now().toString(),
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
                  Spacer(),
                  Row(
                    children: List.generate(
                        products.length, (index) => colorSelection(index)),
                  ),
                  Spacer(),
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
                controller: noteTitle,
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
                controller: noteDescription,
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
                onTap: () => _selectDate(context),
                child: AbsorbPointer(
                  child: TextFormField(
                    controller: date,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      hintText: 'How long set your goal in days?',
                      prefixIcon: Icon(
                        Icons.dialpad,
                        color: Colors.white70,
                      ),
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
                    style: TextStyle(fontSize: 17.0),
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
                    style: TextStyle(fontSize: 17.0),
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

  Padding colorSelection(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              color: products[index].color,
              borderRadius: BorderRadius.circular(10.0)),
        ),
      ),
    );
  }

  // Future<void> _selectDate(BuildContext context) async {
  //   await CalendarDatePicker(
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime.now(),
  //     lastDate: DateTime(
  //         DateTime.now().year, DateTime.now().month, DateTime.now().day + 1),
  //     onDateChanged: (DateTime value) {
  //       setState(() {});
  //     },
  //   );
  // }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        final difference = selectedDate.difference(DateTime.now()).inDays + 1;
        // funkcja wybrana data - DateTime.now()
        // epoch time
        DateTime.now().millisecondsSinceEpoch;
        date.text = difference.toString();
      });
  }
}
