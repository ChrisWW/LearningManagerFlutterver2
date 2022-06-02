import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;

  const LoadingWidget({Key? key, required this.child}) : super(key: key);

  // This widget is the root of your application.
  Widget build(BuildContext context) {
  return Container(EasyLoading.show
  );
  }
}