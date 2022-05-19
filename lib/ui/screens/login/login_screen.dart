

import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  static const String route = '/login';
  //czy natenczas potrzebne?
  //do nawigacji
  final String? fallbackRoute;
  final dynamic fallbackArgs;

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWithoutAppBar(
      body: Center(
        child: Column(
          childern: <Widget>[
            LabberHeadline4(text: tr('app_name')),
            const SizedBox(height: 16.0),
            LoginForm(
              fallbackRoute: fallbackRoute,
              fallbackArgs: fallbackArgs
            ),
          ],
        ),
      ),
    );
  }
}
