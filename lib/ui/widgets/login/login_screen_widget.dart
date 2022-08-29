import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_production_boilerplate/bloc/user_account/user_account_bloc.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({Key? key}) : super(key: key);

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidget();
}

class _LoginScreenWidget extends State<LoginScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserAccountBloc, UserAccountState>(
      listener: (context, state) {
        if (state is UserLoggedInState) {
          EasyLoading.dismiss();
          Navigator.of(context).pushReplacementNamed("/home");
        } else if (state is UserLoggingInProgressState) {
          EasyLoading.instance
            ..fontSize = 20
            ..maskType = EasyLoadingMaskType.black
            ..progressColor = Colors.yellow;
          EasyLoading.showProgress(0.3, status: 'logging...');
        } else if (state is UserLogInErrorState) {
          EasyLoading.dismiss();
        }
      },
      builder: (context, state) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                if (state is UserLogInErrorState) const Text("Error Message"),
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "img/logo_learning_manager.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Center(
                      child: Container(
                      height: 50,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: SignInButton(
                          Buttons.GoogleDark,
                          text: "Sign in with Google",
                          onPressed: () {
                            BlocProvider.of<UserAccountBloc>(context).add(
                              TryToLogIn(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
