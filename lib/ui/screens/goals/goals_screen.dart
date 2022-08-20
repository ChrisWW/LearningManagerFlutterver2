import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/components/custom_appbar.dart';
import 'package:flutter_production_boilerplate/components/searchbar.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/ui/widgets/goals/goals_expansion_panel_list.dart';
import 'package:flutter_production_boilerplate/ui/widgets/my_prefilled_search.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  static const String route = '/goalsScreen';

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  TextEditingController editingController = TextEditingController();
  bool isLoading = false;

  List<Item> getItems(ShowGoalsState state) {
    return state.goals.goals
        .map(
            (e) => Item(header: e.goal.toString(), body: e.timeGoal.toString()))
        .toList();
  }


  @override
  Widget build(BuildContext context) {
// 1 typ klasa bloku, klasa stanu

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Text("Goals"),
                ),
                Expanded(child: MyPrefilledSearch()),
              ],
            ),
            // const CustomAppBar(),
            // const SearchBar(),
            BlocBuilder<GoalsBloc, GoalsState>(
              builder: (context, state) {
                if (state is ShowGoalsState) {
                  final List<Item> itemsGoals = getItems(state);
                  return SingleChildScrollView(
                    child: GoalsExpansionPanelList(items: itemsGoals)
                  );
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
          Navigator.of(context).pushNamed("/addEditGoals");
        },
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
