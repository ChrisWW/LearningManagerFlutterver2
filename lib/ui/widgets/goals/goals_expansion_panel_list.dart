import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:ionicons/ionicons.dart';

class GoalsExpansionPanelList extends StatefulWidget {
  final List<Item> items;

  const GoalsExpansionPanelList({
    Key? key,
    required this.items,
  }) : super(key: key);

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
      children: widget.items.map(
        (Item item) {
          return ExpansionPanel(
            backgroundColor: Colors.orange,
            canTapOnHeader: true,
            isExpanded: item.isExpanded,
            headerBuilder: (_, bool isExpanded) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Text(
                        item.header,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    if (!isExpanded)
                      const Flexible(
                        flex: 1,
                        child: ProgressBar(value: 0.3),
                      ),
                  ],
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        child: PropertyRow(
                          title: 'Per day',
                          content: '21 min/day',
                        ),
                      ),
                      Flexible(
                        child: PropertyRow(
                          title: 'Days left',
                          content: '4.59 days left',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(
                        child: PropertyRow(
                          title: 'Progress',
                          content: '21 min/day',
                        ),
                      ),
                      Flexible(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    '18%',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const ProgressBar(value: 0.3),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () => decreaseGoal(item),
                        child: const Icon(Ionicons.remove_outline),
                      ),
                      const SizedBox(width: 4.0),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          onPressed: () => markGoalAsDone(item),
                          child: Text(
                            'Have you done your work today?'.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () => increaseGoal(item),
                        child: const Icon(Ionicons.add_outline),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }

  void markGoalAsDone(Item item) {
    /// TODO: GoalsBloc - mark goal as done
    /// item.goal;
  }

  void increaseGoal(Item item) {
    /// TODO: GoalsBloc - increase goal
    /// item.goal;
  }

  void decreaseGoal(Item item) {
    /// TODO: GoalsBloc - increase goal
    /// item.goal;
  }
}

class Item {
  final Goal goal;
  final String header;
  final String body;
  bool isExpanded;

  Item(
    this.goal, {
    required this.header,
    required this.body,
    this.isExpanded = false,
  });
}

class PropertyRow extends StatelessWidget {
  final String title;
  final String content;

  const PropertyRow({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$title: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          content,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class ProgressBar extends StatelessWidget {
  final double value;

  const ProgressBar({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      color: Colors.green,
      value: value,
    );
  }
}
