import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/theme_cubit.dart';

class GlobalProviders extends StatelessWidget {
  const GlobalProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: _buildRepositories(context),
      child: Builder(
        builder: (BuildContext context) => MultiBlocProvider(
          providers: _buildBlocProviders(context),
          child: const App(),
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
        BlocPorivder<UserAccountBloc>(
          create: (BuildContext context) => UserAccountBloc(
            RepositoryProvider.of<UserAccountRepository>(context),
          ),
        ),
      ];
}

// Here I can add man
