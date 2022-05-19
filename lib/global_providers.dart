import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/theme_cubit.dart';
import 'package:flutter_production_boilerplate/repositories/user_account_repository.dart';
import 'package:flutter_production_boilerplate/ui/screens/login/login_screen.dart';

import 'bloc/user_account/user_account_bloc.dart';

class GlobalProviders extends StatelessWidget {
  const GlobalProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: _buildRepositories(context),
      child: Builder(
        builder: (BuildContext context) => MultiBlocProvider(
          providers: _buildBlocProviders(context),
          child: const LoginScreen(),
        ),
      ),
    );
  }

  List<RepositoryProvider<dynamic>> _buildRepositories(BuildContext context) =>
      <RepositoryProvider<dynamic>>[
        RepositoryProvider<UserAccountRepository>(
          create: (BuildContext context) => UserAccountRepository(),
        ),
      ];

  List<BlocProvider<dynamic>> _buildBlocProviders(BuildContext context) =>
      <BlocProvider<dynamic>>[
        BlocProvider<ThemeCubit>(
          create: (_) => ThemeCubit(),
        ),
        BlocProvider<UserAccountBloc>(
          create: (BuildContext context) => UserAccountBloc(
            RepositoryProvider.of<UserAccountRepository>(context),
          ),
        ),
      ];
}

// Here I can add man
