import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';

class AddEditNoteScreenArgs {
  final Note? note;

  const AddEditNoteScreenArgs(this.note);
}

// TODO ADD MORE COLORS
enum NoteColor { white, red, blue, orange, purple }

extension NoteColorExt on NoteColor {
  Color mapToColor() {
    switch (this) {
      case NoteColor.white:
        return const Color(0xFFFFFFFF);
      case NoteColor.red:
        return const Color(0xFFff6374);
      case NoteColor.blue:
        return const Color(0xFF71b8ff);
      case NoteColor.orange:
        return const Color(0xFFffaa5b);
      case NoteColor.purple:
        return const Color(0xFF9ba0fc);
      default:
        return const Color(0xFFFFFFFF);
    }
  }

  static List<Color> toList() {
    return NoteColor.values.map((e) => e.mapToColor()).toList();
  }
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
  TextEditingController date = TextEditingController();

  bool value = false;
  bool valueSecond = true;
  DateTime selectedDate = DateTime.now();
  String? formattedDate = "";
  NoteColor selectedColor = NoteColor.white;
  List<Color> colors = NoteColorExt.toList();

  late AddEditNoteScreenArgs args;
  bool isInitialized = false;

  Note note = Note.empty();
  bool isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isInitialized) {
      args =
          ModalRoute.of(context)!.settings.arguments! as AddEditNoteScreenArgs;

      if (args.note != null) {
        note = args.note!;
        selectedColor = note.noteColor;
      }

      noteTitle.text = args.note?.title ?? '';
      noteDescription.text = args.note?.content ?? '';
      if (args.note?.date != null && args.note?.date != "") {
        formattedDate = args.note?.date;
      } else {
        formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(selectedDate);
      }
      isInitialized = true;
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
        backgroundColor: selectedColor.mapToColor(),
        appBar: AppBar(
          title: FilterChip(
            label: Text(formattedDate!),
            padding: const EdgeInsets.only(left: 40.0, right: 40.0),
            backgroundColor: Colors.transparent,
            shape: const StadiumBorder(side: BorderSide()),
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
                        color: selectedColor.index,
                      ),
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
                          color: selectedColor.index),
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
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.5),
                spreadRadius: 2.0,
                blurRadius: 8.0,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Spacer(),
                  Row(
                    children: List.generate(
                      colors.length,
                      (index) => colorSelection(index),
                    ),
                  ),
                  const Spacer(),
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
        onTap: () {
          setState(() {
            selectedColor = Note.indexToNoteColor(index);
          });
        },
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: colors[index],
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
