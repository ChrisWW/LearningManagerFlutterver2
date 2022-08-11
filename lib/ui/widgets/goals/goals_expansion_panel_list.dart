import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';

class GoalsExpansionPanelList extends StatefulWidget {
  final List<Item> items;

  const GoalsExpansionPanelList({Key? key, required this.items})
      : super(key: key);

  @override
  State<GoalsExpansionPanelList> createState() =>
      _GoalsExpansionPanelListState();
}

class _GoalsExpansionPanelListState extends State<GoalsExpansionPanelList> {
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (index, isExpanded) {
        setState(() => widget.items[index].isExpanded = !isExpanded);
      },
      children: widget.items
          .map((item) => ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: item.isExpanded,
                headerBuilder: (context, isExpanded) => ListTile(
                    title: Text(
                  item.header,
                  style: TextStyle(fontSize: 20),
                )),
                body: ListTile(
                    title: Text(item.body, style: TextStyle(fontSize: 16))),
              ))
          .toList(),
    );
  }
}

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
