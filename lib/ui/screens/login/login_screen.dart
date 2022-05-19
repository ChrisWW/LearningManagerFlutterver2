

import 'package:flutter/cupertino.dart';
import 'package:flutter_production_boilerplate/ui/widgets/login/screen_with_appbar.dart';

import 'form/login_form.dart';

class LoginScreen extends StatelessWidget {
  static const String route = '/login';
  //czy natenczas potrzebne?
  //do nawigacji
  final String? fallbackRoute;
  final dynamic fallbackArgs;
  
  
  // ScreenWithoutAppBar oddzielny widget

  const LoginScreen({Key? key, this.fallbackRoute, this.fallbackArgs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenWithAppBar();
  }
}
    
    // return ScreenWithoutAppBar(
    //   body: Center(
    //     child: Column(
    //       childern: <Widget>[
    //         LabberHeadline4(text: tr('app_name')),
    //         const SizedBox(height: 16.0),
    //         LoginForm(
    //           fallbackRoute: fallbackRoute,
    //           fallbackArgs: fallbackArgs
    //         ),
    //       ],
    //     ),
    //   ),
    // );

