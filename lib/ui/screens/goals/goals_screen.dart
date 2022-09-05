import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_search_cubit.dart';
import 'package:flutter_production_boilerplate/ui/widgets/goals/goals_expansion_panel_list.dart';
import 'package:flutter_production_boilerplate/ui/widgets/my_prefilled_search.dart';

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
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        "My Tasks",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                        ),
                      ),
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
                    const SizedBox(height: 24.0),
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

