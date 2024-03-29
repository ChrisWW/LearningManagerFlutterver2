import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/ui/screens/notes/add_edit_note_screen.dart';

class NoteDetailScreen extends StatefulWidget {
  static const String route = '/note-details';

  const NoteDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  _NoteDetailScreenState createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  // late Note note
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
      isInitialized = true;
    }
  }

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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      note.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      note.date,
                      style: TextStyle(color: Colors.white38),
                    ),
                    SizedBox(height: 8),
                    Text(
                      note.content,
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )
                  ],
                ),
              ),
      );

  Widget editButton() => IconButton(
      icon: Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        // maybe:
        // Navigator.of(context).pushNamed("/addEditGoals");
        await Navigator.of(context).push(MaterialPageRoute<void>(
          builder: (context) => AddEditNoteScreen(),
        ));

        refreshNote();
      });

  Widget deleteButton() => IconButton(
        icon: Icon(Icons.delete),
        onPressed: () async {
          // TODO
          // delete from database
          // await NotesDatabase.instance.delete(widget.noteId);

          Navigator.of(context).pop();
        },
      );
}
