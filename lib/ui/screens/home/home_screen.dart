import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/ui/widgets/login/screen_with_appbar.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenWithAppBar(body: SizedBox());
  }
}