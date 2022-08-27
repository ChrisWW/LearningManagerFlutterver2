import 'package:flutter/material.dart';

class ScreenWithAppBar extends StatelessWidget {
  final Widget body;

  const ScreenWithAppBar({Key? key, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Manager'),
      ),
      body: body,
    );
  }
}
