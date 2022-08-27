import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/api/api_service.dart';
import 'package:flutter_production_boilerplate/bloc/goals/goals_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/my_inspirations/my_inspirations_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/notes/notes_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/profile/profile_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/inspiration_cubit.dart';
import 'package:flutter_production_boilerplate/cubit/theme_cubit.dart';
import 'package:flutter_production_boilerplate/main.dart';
import 'package:flutter_production_boilerplate/repositories/goals_repository.dart';
import 'package:flutter_production_boilerplate/repositories/inspiration_repository.dart';
import 'package:flutter_production_boilerplate/repositories/my_inspirations_repository.dart';
import 'package:flutter_production_boilerplate/repositories/notes_repository.dart';
import 'package:flutter_production_boilerplate/repositories/profile_repository.dart';
import 'package:flutter_production_boilerplate/repositories/user_account_repository.dart';

import 'bloc/user_account/user_account_bloc.dart';

class GlobalProviders extends StatelessWidget {
  late final Dio _dio;
  late final ApiService _apiService;

  GlobalProviders({Key? key}) : super(key: key) {
    _dio = Dio(BaseOptions(contentType: "application/json"));
    _apiService = ApiService(_dio);
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: _buildRepositories(context),
      child: Builder(
        builder: (BuildContext context) => MultiBlocProvider(
          providers: _buildBlocProviders(context),
          child: const MyApp(),
        ),
      ),
    );
  }

  List<RepositoryProvider<dynamic>> _buildRepositories(BuildContext context) =>
      <RepositoryProvider<dynamic>>[
        RepositoryProvider<UserAccountRepository>(
          create: (BuildContext context) => UserAccountRepository(),
        ),
        RepositoryProvider<InspirationRepository>(
          create: (BuildContext context) => InspirationRepository(_apiService),
        ),
        RepositoryProvider<GoalsRepository>(
          create: (BuildContext context) => GoalsRepository(),
        ),
        RepositoryProvider<NotesRepository>(
          create: (BuildContext context) => NotesRepository(),
        ),
        RepositoryProvider<ProfileRepository>(
          create: (BuildContext context) => ProfileRepository(),
        ),
        RepositoryProvider<MyInspirationsRepository>(
          create: (BuildContext context) => MyInspirationsRepository(),
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
        // TODO
        BlocProvider<InspirationCubit>(
          create: (BuildContext context) => InspirationCubit(
            RepositoryProvider.of<InspirationRepository>(context),
          ),
        ),
        BlocProvider<GoalsBloc>(
          create: (BuildContext context) => GoalsBloc(
            RepositoryProvider.of<GoalsRepository>(context),
          ),
        ),
        BlocProvider<NotesBloc>(
          create: (BuildContext context) => NotesBloc(
            RepositoryProvider.of<NotesRepository>(context),
          ),
        ),
        BlocProvider<ProfileBloc>(
          create: (BuildContext context) => ProfileBloc(
            RepositoryProvider.of<ProfileRepository>(context),
          ),
        ),
        BlocProvider<MyInspirationsBloc>(
          create: (BuildContext context) => MyInspirationsBloc(
            RepositoryProvider.of<MyInspirationsRepository>(context),
          ),
        )
      ];
}
