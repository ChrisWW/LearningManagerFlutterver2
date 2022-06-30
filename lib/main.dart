import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_production_boilerplate/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_production_boilerplate/authentication/data/providers/authentication_firebase_provider.dart';
import 'package:flutter_production_boilerplate/authentication/data/providers/google_sign_in_provider.dart';
import 'package:flutter_production_boilerplate/authentication/data/repositories/authenticaiton_repository.dart';
import 'package:flutter_production_boilerplate/authentication/home/views/home_main_view.dart';
import 'package:flutter_production_boilerplate/authentication/observers/app_bloc_observer.dart';
import 'package:flutter_production_boilerplate/cubit/theme_cubit.dart';
import 'package:flutter_production_boilerplate/global_providers.dart';
import 'package:flutter_production_boilerplate/ui/screens/home/home_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/login/login_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

/// Try using const constructors as much as possible!

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // Bloc.observer = AppBlocObserver();
  // runApp(MyApp());

  /// Initialize packages
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  if (Platform.isAndroid) {
    await FlutterDisplayMode.setHighRefreshRate();
  }
  final tmpDir = await getTemporaryDirectory();
  Hive.init(tmpDir.toString());
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: tmpDir,
  );

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const <Locale>[
        Locale('en'),
      ],
      fallbackLocale: const Locale('en'),
      useFallbackTranslations: true,
      child: const GlobalProviders(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return BlocProvider(
  //     create: (context) => AuthenticationBloc(
  //       authenticationRepository: AuthenticationRepository(
  //         authenticationFirebaseProvider: AuthenticationFirebaseProvider(
  //           firebaseAuth: FirebaseAuth.instance,
  //         ),
  //         googleSignInProvider: GoogleSignInProvider(
  //           googleSignIn: GoogleSignIn(),
  //         ),
  //       ),
  //     ),
  //     child: MaterialApp(
  //       title: 'Flutter Demo',
  //       theme: ThemeData(
  //         primarySwatch: Colors.blue,
  //         visualDensity: VisualDensity.adaptivePlatformDensity,
  //       ),
  //       home: HomeMainView(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Production Boilerplate',
            theme: state.themeData,
            home: const LoginScreen(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            builder: EasyLoading.init(),
            routes: {
              '/login': (_) => const LoginScreen(),
              '/home': (_) => const HomeScreen(),
            },
          );
        },
      ),
    );
  }
}
