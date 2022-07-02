import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/api/api_service.dart';
import 'package:flutter_production_boilerplate/cubit/inspiration_cubit.dart';
import 'package:flutter_production_boilerplate/cubit/theme_cubit.dart';
import 'package:flutter_production_boilerplate/main.dart';
import 'package:flutter_production_boilerplate/repositories/inspiration_repository.dart';
import 'package:flutter_production_boilerplate/repositories/user_account_repository.dart';
import 'package:flutter_production_boilerplate/ui/screens/login/login_screen.dart';

import 'bloc/user_account/user_account_bloc.dart';

class GlobalProviders extends StatelessWidget {
  late final Dio _dio;
  late final ApiService _apiService;

  GlobalProviders({Key? key}) : super(key: key) {
    _dio = Dio(BaseOptions(contentType: "application/json"));
    _dio.interceptors.add(JsonResponseConverter());
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
        )
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
        )
      ];
}

class JsonResponseConverter extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    response.data = json.decode(response.data as String);
    super.onResponse(response, handler);
  }
}