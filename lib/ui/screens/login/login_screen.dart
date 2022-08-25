import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_production_boilerplate/ui/widgets/login/screen_with_appbar.dart';

import '../../widgets/login/login_screen_widget.dart';

class LoginScreen extends StatelessWidget {
  static const String route = '/login';
  //czy natenczas potrzebne?
  //do nawigacji
  
  // ScreenWithoutAppBar oddzielny widget

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenWithAppBar(body: LoginScreenWidget());
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

