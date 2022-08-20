import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/notes/Note.dart';
import 'package:flutter_production_boilerplate/ui/screens/notes/edit_note_screen.dart';
import 'package:intl/intl.dart';

class NoteDetailScreen extends StatefulWidget {
  final int noteId;

  const NoteDetailScreen({
    Key? key,
    required this.noteId,
  }) : super(key: key);

  @override
  _NoteDetailScreenState createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  // late Note note
  Note note = Note(isImportant: false, createdTime: DateTime.now(), title: '', description: '', number: 1);
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
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
                      DateFormat.yMMMd().format(note.createdTime),
                      style: TextStyle(color: Colors.white38),
                    ),
                    SizedBox(height: 8),
                    Text(
                      note.description,
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
          builder: (context) => AddEditNoteScreen(note: note),
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
