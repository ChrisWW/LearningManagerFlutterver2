import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_search_cubit.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_search_cubit.dart';
import 'package:flutter_production_boilerplate/data/models/inspiration/inspiration.dart';
import 'package:flutter_production_boilerplate/data/models/notes/note.dart';
import 'package:flutter_production_boilerplate/ui/screens/drawerlayout/menuscreens/myinspirations/add_edit_my_inspiration_screen.dart';
import 'package:flutter_production_boilerplate/ui/widgets/my_prefilled_search.dart';

class MyInspirationsScreen extends StatefulWidget {
  static const String route = '/myInspirationsScreen';

  @override
  _MyInspirationsScreenState createState() => _MyInspirationsScreenState();
}

class _MyInspirationsScreenState extends State<MyInspirationsScreen> {
  late final MyInspirationsSearchCubit myInspirationsSearchCubit;
  TextEditingController editingController = TextEditingController();
  bool isLoading = false;

  final Inspiration inspiration = Inspiration();

  List<Inspiration> getItems(MyInspirationsListState state) {
    return state.inspirations;
  }

  @override
  void initState() {
    super.initState();

    myInspirationsSearchCubit = MyInspirationsSearchCubit.create(context)
      ..initSearch();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MyInspirationsSearchCubit>.value(
      value: myInspirationsSearchCubit,
      child: BlocListener<MyInspirationsBloc, MyInspirationsState>(
        listener: (context, state) {
          // do stuff here based on BlocA's state
          // do zmiany stanow, nawigacji listener, setState
          if (state is ShowMyInspirationsDataState) {
            myInspirationsSearchCubit.initSearch();
          } else if (state is ErrorMyInspirationsState) {
            print("Error in blocListener MyInspirations");
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    "My Inspirations",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                Expanded(
                  child: BlocBuilder<MyInspirationsSearchCubit,
                      MyInspirationsSearchState>(
                    builder: (context, state) {
                      return MyPrefilledSearch(
                        onChanged: (String value) =>
                            BlocProvider.of<MyInspirationsSearchCubit>(context)
                                .search(value),
                      );
                    },
                  ),
                ),
                const SizedBox(width: 24.0),
                // const CustomAppBar(),
                // const SearchBar(),
                BlocBuilder<MyInspirationsSearchCubit,
                    MyInspirationsSearchState>(
                  builder: (context, state) {
                    if (state is MyInspirationsListState) {
                      if (getItems(state).isNotEmpty) {
                        final List<Inspiration> itemsInspirations =
                            getItems(state);
                        return MyInspirationsRowView(
                            itemsInspirations: itemsInspirations);
                      } else {
                        return Text("Empty");
                      }
                    } else {
                      return const Text("Error");
                    }
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AddEditMyInspirationScreen.route,
                arguments: AddEditMyInspirationScreenArgs(null),
              );
            },
          ),
        ),
      ),
    );
  }
}

class MyInspirationsRowView extends StatelessWidget {
  final List<Inspiration> itemsInspirations;

  const MyInspirationsRowView({
    Key? key,
    required this.itemsInspirations,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return ListView();
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(10.0),
          shrinkWrap: true,
          itemCount: itemsInspirations.length,
          itemBuilder: (BuildContext context, int index) {
            if (itemsInspirations.isNotEmpty) {
              return listItem(context, index);
            } else {
              return Text("EmptyList");
            }
          }),
    );
  }

  Widget listItem(BuildContext context, int index) {
    final Inspiration inspiration = itemsInspirations[index];
    String authorValueToDisplay = "";
    String quoteValueToDisplay = "";
    String inspirationImageUrl = "${inspiration.imageUrl}.png";
    if (inspiration.quote.isEmpty ||
        inspiration.quote == null ||
        inspiration.authorQuote.isEmpty ||
        inspiration.authorQuote == null) {
      authorValueToDisplay = inspiration.title;
      quoteValueToDisplay = inspiration.description;
    } else {
      authorValueToDisplay = inspiration.authorQuote;
      quoteValueToDisplay = inspiration.quote;
    }
    return Center(
      child: Container(
        height: 180,
        padding: EdgeInsets.symmetric(
          horizontal: 5,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Image.network(inspirationImageUrl),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      authorValueToDisplay,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      quoteValueToDisplay,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// return Scaffold(body: ListView.builder(
//     padding: EdgeInsets.all(10.0),
// shrinkWrap: false,
// itemCount: model.length,
// itemBuilder: (BuildContext context, int index)
// ) {
// return listItem(context, index);
//
// }),
// return Center(
//   child: Container(
//     height: 180,
//     padding: EdgeInsets.symmetric(
//       horizontal: 5,
//     ),
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text('Image'),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         Expanded(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Text(
//                   itemsIn,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     color: Colors.black,
//                   ),
//                   overflow: TextOverflow.ellipsis,
//                   maxLines: 2,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Text('Quote'),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// );

// ListView.builder(
// padding: EdgeInsets.all(10.0),
// shrinkWrap: false,
// itemCount: model.length,
// itemBuilder: (BuildContext context, int index) {
// return listItem(context, index);
// },
