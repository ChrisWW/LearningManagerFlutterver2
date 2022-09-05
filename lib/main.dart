import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_production_boilerplate/helpers/local_notification_service.dart';
import 'package:flutter_production_boilerplate/ui/screens/drawerlayout/drawer_page.dart';
import 'package:flutter_production_boilerplate/ui/screens/drawerlayout/menuscreens/myinspirations/add_edit_my_inspiration_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/drawerlayout/menuscreens/myinspirations/my_inspirations_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/drawerlayout/menuscreens/profile/profile_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/goals/add_edit_goal_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/notes/note_detail_screen.dart';
import 'package:flutter_production_boilerplate/utils/work_manager.dart';
import 'package:logger/logger.dart';
import 'firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_production_boilerplate/cubit/theme_cubit.dart';
import 'package:flutter_production_boilerplate/global_providers.dart';
import 'package:flutter_production_boilerplate/ui/screens/home/home_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/login/login_screen.dart';
import 'package:hive/hive.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'ui/screens/notes/add_edit_note_screen.dart';

/// Try using const constructors as much as possible!

void main() async {

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

  /// Firebase
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
      // name:,
      options: DefaultFirebaseOptions.currentPlatform
    ).whenComplete(() async {
      // Logger.d('Firebase initialized');
    });
  }

  /// Background Service
  MyWorkManager.initialize();
  // LocalNotificationService.intialize();

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const <Locale>[
        Locale('en'),
      ],
      fallbackLocale: const Locale('en'),
      useFallbackTranslations: true,
      child: GlobalProviders(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeCubit>(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Production Boilerplate',
            theme: state.themeData,
            home: const DrawerPage(),
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            builder: EasyLoading.init(),
            routes: {
              LoginScreen.route: (_) => const LoginScreen(),
              DrawerPage.route: (_) => const DrawerPage(),
              AddEditGoalScreen.route: (_) => const AddEditGoalScreen(),
              AddEditNoteScreen.route: (_) => const AddEditNoteScreen(),
              ProfileScreen.route: (_) => const ProfileScreen(),
              MyInspirationsScreen.route: (_) => MyInspirationsScreen(),
              AddEditMyInspirationScreen.route: (_) => const AddEditMyInspirationScreen()
            },
          );
        },
      ),
    );
  }
}
