import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/ui/screens/goals/product.dart';

class AddEditNoteScreenArgs {
  final Note? note;

  const AddEditNoteScreenArgs(this.note);
}

class AddEditNoteScreen extends StatefulWidget {
  static const String route = '/addEditNotes';

  const AddEditNoteScreen({Key? key}) : super(key: key);

  @override
  State<AddEditNoteScreen> createState() => _AddEditNoteScreenState();
}

class _AddEditNoteScreenState extends State<AddEditNoteScreen> {
  TextEditingController noteTitle = TextEditingController();
  TextEditingController noteDescription = TextEditingController();
  TextEditingController date = new TextEditingController();
  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();
  String? formattedDate = "";

  late AddEditNoteScreenArgs args;
  bool isInitialized = false;

  Note note = Note(date: "", title: '', content: '', color: -1);
  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isInitialized) {
      args =
          ModalRoute.of(context)!.settings.arguments! as AddEditNoteScreenArgs;
      refreshNote();
      // TODO przyspisac description

      noteTitle.text = args.note?.title ?? '';
      noteDescription.text = args.note?.content ?? '';
      if(args.note?.date != null && args.note?.date != "") {
        formattedDate = args.note?.date;
      } else {
        formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(selectedDate);
      }

      isInitialized = true;
    }
  }

  // TODO USUNAC refresh?
  Future refreshNote() async {
    setState(() => isLoading = true);
    try {
      // TODO
      //refresh maybe using state?
      // this.note = await NotesDatabase.instance.readNote(widget.noteId);
    } catch (e) {
      // Handle error here, either show some information or dialog.
      // print() is only for debugging purpose.
      print(e);
    } finally {
      setState(() => isLoading = false);
    }
  }

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
          title: FilterChip(
            label: Text(formattedDate!),
            padding: EdgeInsets.only(left: 40.0, right: 40.0),
            backgroundColor: Colors.transparent,
            shape: StadiumBorder(side: BorderSide()),
            onSelected: (bool value) {},
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actionsIconTheme: const IconThemeData(color: Colors.black),
          actions: [
            if (args.note != null)
              IconButton(
                onPressed: () {
                  // TODO id properly
                  print(args.note!.id);
                  BlocProvider.of<NotesBloc>(context).add(
                    DeleteNote(
                      args.note!.id,
                    ),
                  );
                },
                icon: const Icon(
                  Icons.delete,
                ),
              ),
            IconButton(
              onPressed: () {
                if (args.note == null) {
                  BlocProvider.of<NotesBloc>(context).add(
                    AddNote(
                      Note(
                          id: DateTime.now().millisecondsSinceEpoch.toString(),
                          title: noteTitle.value.text,
                          content: noteDescription.value.text,
                          date: formattedDate!,
                          color: -1),
                    ),
                  );
                } else {
                  BlocProvider.of<NotesBloc>(context).add(
                    UpdateNote(
                      Note(
                          id: args.note!.id,
                          title: noteTitle.value.text,
                          content: noteDescription.value.text,
                          date: formattedDate!,
                          color: -1),
                    ),
                  );
                }
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
                  hintText: "Description",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
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
}
