import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class MyPrefilledSearch extends StatelessWidget {
  final Function (String) onChanged;
  const MyPrefilledSearch({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      prefixIcon: const Icon(Ionicons.search),
      suffixIcon: const Icon(Ionicons.enter),
      onChanged: onChanged,
      onSubmitted: onChanged,
    );
  }
}