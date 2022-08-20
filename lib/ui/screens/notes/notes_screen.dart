import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_search_cubit.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/ui/screens/notes/note_detail_screen.dart';
import 'package:flutter_production_boilerplate/ui/widgets/my_prefilled_search.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/notes/note_card_widget.dart';
import 'add_edit_note_screen.dart';

class NotesScreen extends StatefulWidget {
  static const String route = '/notesScreen';

  @override
  _NotesScreenState createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  late final NotesSearchCubit notesSearchCubit;
  TextEditingController editingController = TextEditingController();
  bool isLoading = false;

  List<Note> getItems(NotesListState state) {
    return state.notes;
  }

  @override
  void initState() {
    super.initState();

    // refreshNotes();

    notesSearchCubit = NotesSearchCubit.create(context)
      ..initSearch();
  }

  @override
  void dispose() {
    super.dispose();

    // NotesDatabase.instance.close();
  }

  // Future refreshNotes() async {
  //   setState(() => isLoading = true);
  //
  //   // TODO
  //   // this.notes = await NotesDatabase.instance.readAllNotes();
  //
  //   setState(() => isLoading = false);
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotesSearchCubit>.value(
      value: notesSearchCubit,
      child: BlocListener<NotesBloc, NotesState>(
        listener: (context, state) {
          // do stuff here based on BlocA's state
          // do zmiany stanow, nawigacji listener, setState
          if (state is ShowNotesState) {
            notesSearchCubit.initSearch();
          } else if (state is ErrorNotesState) {
            print("Error in blocListener notes");
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                // TODO przesunac Notes
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Text("Notes"),
                    ),
                    Expanded(
                      child: BlocBuilder<NotesSearchCubit, NotesSearchState>(
                        builder: (context, state) {
                          return MyPrefilledSearch(
                            onChanged: (String value) =>
                                BlocProvider.of<NotesSearchCubit>(context)
                                    .search(value),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                // const CustomAppBar(),
                // const SearchBar(),
                BlocBuilder<NotesSearchCubit, NotesSearchState>(
                  builder: (context, state) {
                    if (state is NotesListState) {
                      if(getItems(state).isNotEmpty) {
                        final List<Note> itemsNotes = getItems(state);
                        return buildNotes(itemsNotes);
                      } else {
                        return Text("Empty list");
                      }
                    } else {
                      return Text("Error");
                    }
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Icon(Icons.add),
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (context) => AddEditNoteScreen()),
              );

              // refreshNotes();
            },
          ),
        ),
      ),
    );
  }

  Widget buildNotes(List<Note> itemsNotes) =>
      StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: itemsNotes.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          // TODO change from container to onclick
          return Container();
          // final note = itemsNotes[index];
          //
          // // TODO parse int
          // return GestureDetector(
          //   onTap: () async {
          //     await Navigator.of(context).push(MaterialPageRoute<void>(
          //       builder: (context) =>
          //           NoteDetailScreen(noteId: int.parse(note.id),
          //           ),),);
          //
          //     // refreshNotes();
          //   },
          //   child: NoteCardWidget(note: note, index: index),
          // );
        },
      );

}
