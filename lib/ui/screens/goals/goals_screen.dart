import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';

class GoalsScreen extends StatefulWidget {
  const GoalsScreen({Key? key}) : super(key: key);

  @override
  State<GoalsScreen> createState() => _GoalsScreenState();
}

class _GoalsScreenState extends State<GoalsScreen> {
  TextEditingController editingController = TextEditingController();
  bool isLoading = false;

  static const loremIpsum = 'Lorem ipsum adsasds, sdadsad adalfaslf sals'
      'fasdasdsad';
  final List<Item> items = [
    Item(header: 'Panel 1', body: loremIpsum),
    Item(header: 'Panel 2', body: loremIpsum),
    Item(header: 'Panel 3', body: loremIpsum),
    Item(header: 'Panel 4', body: loremIpsum),
    Item(header: 'Panel 5', body: loremIpsum),
  ];

  @override
  Widget build(BuildContext context) {
// 1 typ klasa bloku, klasa stanu
    return BlocConsumer<GoalsBloc, GoalsState>(
      listener: (context, state) { },
        // if (state is UserLoggedInState) {
        //   EasyLoading.dismiss();
        //   Navigator.of(context).pushReplacementNamed("/home");
        // } else if (state is UserLoggingInProgressState) {
        //   EasyLoading.instance
        //     ..fontSize = 20
        //     ..maskType = EasyLoadingMaskType.black
        //     ..progressColor = Colors.yellow;
        //   EasyLoading.showProgress(0.3, status: 'logging...');
        //   // myOverlay.remove();
        // } else if (state is UserLogInErrorState) {
        //   EasyLoading.dismiss();
        // }
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Goals',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (value) {},
                    controller: editingController,
                    decoration: InputDecoration(
                        labelText: "Search",
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0)))),
                  ),
                ),
                SingleChildScrollView(
                  child: ExpansionPanelList(
                    expansionCallback: (index, isExpanded) {
                      setState(() => items[index].isExpanded = !isExpanded);
                    },
                    children: items
                        .map((item) => ExpansionPanel(
                              canTapOnHeader: true,
                              isExpanded: item.isExpanded,
                              headerBuilder: (context, isExpanded) => ListTile(
                                  title: Text(
                                item.header,
                                style: TextStyle(fontSize: 20),
                              )),
                              body: ListTile(
                                  title: Text(item.body,
                                      style: TextStyle(fontSize: 16))),
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            child: Icon(Icons.add),
            onPressed: () async {
              Navigator.of(context).pushReplacementNamed("/addEditGoals");
            },
          ),
        );
      },
    );
  }
}

// TODO goals

class Item {
  final String header;
  final String body;
  bool isExpanded;

  Item({
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}
