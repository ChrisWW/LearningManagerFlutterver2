import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {

  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() {return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  // TODO
  @override
  Widget build(BuildContext context) {
    return SizedBox();
    // return BlocConsumer(UserAccountBloc, UserAccountState) (
    //   listener: navigateNext,
    //
    // )
  }
}
