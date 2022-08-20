import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPrefilledSearch extends StatelessWidget {
  final Function (String) onChanged;
  const MyPrefilledSearch({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      onChanged: onChanged,
      onSubmitted: onChanged,
    );
  }
}