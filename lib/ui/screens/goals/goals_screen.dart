import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_search_cubit.dart';
import 'package:flutter_production_boilerplate/ui/widgets/goals/goals_expansion_panel_list.dart';
import 'package:flutter_production_boilerplate/ui/widgets/my_prefilled_search.dart';

import '../../../bloc/goals/goals_search_cubit.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  static const String route = '/goalsScreen';

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  late final GoalsSearchCubit goalsSearchCubit;
  TextEditingController editingController = TextEditingController();
  bool isLoading = false;

  List<Item> getItems(GoalsListState state) {
    return state.goals
        .map((goal) => Item(
              goal,
              header: goal.goal.toString(),
              body: goal.timeGoal.toString(),
            ))
        .toList();
  }

  @override
  void initState() {
    super.initState();

    // Zroci referencje do goalsSearchCubit i wykona initSearch() syntax sugar
    // init danych
    // subskrybcja moze zwiekszac 'coupling' powizanie miedzy blocami w duzych aplikacjach
    // druga opcja to listener na screenie
    goalsSearchCubit = GoalsSearchCubit.create(context)..initSearch();
  }

  @override
  Widget build(BuildContext context) {
// 1 typ klasa bloku, klasa stanu
    return BlocProvider<GoalsSearchCubit>.value(
      value: goalsSearchCubit,
      child: BlocListener<GoalsBloc, GoalsState>(
        listener: (context, state) {
          // do stuff here based on BlocA's state
          // do zmiany stanow, nawigacji listener, setState
          if (state is ShowGoalsState) {
            goalsSearchCubit.initSearch();
          } else if (state is ErrorGoalsState) {
            print("Error in blocListener");
          }
        },
        child: Scaffold(
          body: SafeArea(
            child: ListView(
              children: <Widget>[
                // TODO przesunac Notes
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text("Goals"),
                    ),
                    Expanded(
                      child: BlocBuilder<GoalsSearchCubit, GoalsSearchState>(
                        builder: (context, state) {
                          return MyPrefilledSearch(
                            onChanged: (String value) =>
                                BlocProvider.of<GoalsSearchCubit>(context)
                                    .search(value),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 24.0),
                  ],
                ),
                // const CustomAppBar(),
                // const SearchBar(),
                BlocBuilder<GoalsSearchCubit, GoalsSearchState>(
                  builder: (context, state) {
                    if (state is GoalsListState) {
                      final List<Item> itemsGoals = getItems(state);
                      return SingleChildScrollView(
                        child: GoalsExpansionPanelList(items: itemsGoals),
                      );
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
            child: Icon(Icons.add),
            onPressed: () async {
              Navigator.of(context).pushNamed("/addEditGoals");
            },
          ),
        ),
      ),
    );
  }
}

// return Scaffold(
//   appBar: AppBar(
//     title: Text(
//       'Goals',
//       style: TextStyle(fontSize: 24, color: Colors.black),
//     ),
//     backgroundColor: Colors.white,
//   ),
//   body: Container(
//     child: Column(
//       children: <Widget>[
//         Padding(
//           padding: EdgeInsets.all(8.0),
//           child: TextField(
//             onChanged: (value) {},
//             controller: editingController,
//             decoration: InputDecoration(
//                 labelText: "Search",
//                 hintText: "Search",
//                 prefixIcon: Icon(Icons.search),
//                 border: OutlineInputBorder(
//                     borderRadius:
//                         BorderRadius.all(Radius.circular(25.0)))),
//           ),
//         ),
//         SingleChildScrollView(
//           child: ExpansionPanelList(
//             expansionCallback: (index, isExpanded) {
//               setState(() => items[index].isExpanded = !isExpanded);
//             },
//             children: items
//                 .map((item) => ExpansionPanel(
//                       canTapOnHeader: true,
//                       isExpanded: item.isExpanded,
//                       headerBuilder: (context, isExpanded) => ListTile(
//                           title: Text(
//                         item.header,
//                         style: TextStyle(fontSize: 20),
//                       )),
//                       body: ListTile(
//                           title: Text(item.body,
//                               style: TextStyle(fontSize: 16))),
//                     ))
//                 .toList(),
//           ),
//         )
//       ],
//     ),
//   ),
//   floatingActionButton: FloatingActionButton(
//     backgroundColor: Colors.black,
//     child: Icon(Icons.add),
//     onPressed: () async {
//       Navigator.of(context).pushReplacementNamed("/addEditGoals");
//     },
//   ),
// );
//     },
//     ))))};
//   }
// }
