import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/data/models/goal/goal.dart';
import 'package:flutter_production_boilerplate/helpers/PopUpExample.dart';
import 'package:flutter_production_boilerplate/helpers/count_service.dart';
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
          final daysLeft = CountService().getDaysLeft(
              item.goal.timeGoal.toString(), item.goal.initialDate);
          final progressPercentage = CountService()
              .getProgressPercentages(
                  item.goal.timeGoal.toString(), item.goal.initialDate)
              .toString();
          final countHour = CountService().countHour(item.goal.initialDate,
              item.goal.intenseGoal.toString(), item.goal.timeGoal.toString());
          return ExpansionPanel(
            backgroundColor: Colors.orange,
            canTapOnHeader: true,
            isExpanded: item.isExpanded,
            headerBuilder: (_, bool isExpanded) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      Flexible(
                        flex: 1,
                        child: ProgressBar(
                          value: double.parse(progressPercentage) / 100,
                        ),
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
                    children: [
                      Flexible(
                        child: PropertyRow(
                          title: 'Per day',
                          content: '${item.goal.intenseGoal} min/day',
                        ),
                      ),
                      Flexible(
                        child: PropertyRow(
                          title: 'Days left',
                          content: '$daysLeft days left',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: PropertyRow(
                          title: 'Progress',
                          content: '$countHour hour',
                        ),
                      ),
                      const Flexible(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '$progressPercentage %',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ProgressBar(value: double.parse(progressPercentage) / 100),
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
    // PopUpExample(key: null,).createElement();
    showDataAlert(context);
  }

  void increaseGoal(Item item) {
    /// TODO: GoalsBloc - increase goal
    /// item.goal;
    item.goal.timeGoal += 1;
  }

  void decreaseGoal(Item item) {
    /// TODO: GoalsBloc - increase goal
    /// item.goal;
    item.goal.timeGoal -= 1;
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

void showDataAlert(BuildContext contextValue) {
  showDialog<void>(
      context: contextValue,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
          contentPadding: EdgeInsets.only(
            top: 10.0,
          ),
          title: Text(
            "Save your task: }",
            style: TextStyle(fontSize: 24.0),
          ),
          content: Container(
            height: 200,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Clicking NO - means you haven't done your work and one additional day could be added to complete your goal depends on your preferences.",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 25,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            // fixedSize: Size(250, 50),
                          ),
                          child: Text(
                            "Cancel",
                          ),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            // fixedSize: Size(250, 50),
                          ),
                          child: Text(
                            "No",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            // fixedSize: Size(250, 50),
                          ),
                          child: Text(
                            "Yes",
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text('Note'),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'
                  //     ' ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud'
                  //     ' exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                  //     ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum '
                  //     'dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,'
                  //     ' sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  //     style: TextStyle(fontSize: 12),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        );
      });
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
