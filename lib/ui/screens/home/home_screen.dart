import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/cubit/inspiration_cubit.dart';
import 'package:flutter_production_boilerplate/ui/screens/drawerlayout/drawer_page.dart';
import 'package:flutter_production_boilerplate/ui/screens/goals/goals_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/inspiration/inspiration_screen.dart';
import 'package:flutter_production_boilerplate/ui/screens/notes/notes_screen.dart';
import 'package:flutter_production_boilerplate/ui/widgets/login/screen_with_appbar.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// TODO
// oddzielny widget, screenwithappbar etc. tak jak logowanie
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => BlocConsumer<InspirationCubit, InspirationState>(
      listener: (context, state) {
        if (state is InitialInspirationState) {

        } else if(state is ShowInspirationState) {

        }
      }, builder: (context, state) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            // drawer: const DrawerPage(),
            appBar: AppBar(
                foregroundColor: Colors.black,
                title: Text("Learning Manager"),
                actions: [
                  // IconButton(
                  //     icon: Icon(Icons.notifications_none),
                  //     color: AppColors.PRIMARY_COLOR,
                  //     onPressed: () {
                  //       print("Go to Notification center");
                  //     }),

                  // ???git
                  IconButton(
                    icon: Icon(Icons.archive),
                    color: Colors.orange,
                    onPressed: () {
                      print("Go to Favourites");
                    },
                  ),
                  IconButton(
                    color: Colors.orange,
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      print("Go to Profle");
                    },
                  )
                ],
                backgroundColor: Colors.white,
                // flexibleSpace: Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [Colors.purple, Colors.red],
                //       begin: Alignment.bottomRight,
                //       end: Alignment.topLeft,
                //     ),
                //   ),
                // ),

                bottom: const TabBar(
                  //isScrollable: true,
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  indicatorColor: Colors.black,
                  indicatorWeight: 5,
                  tabs: [
                    Tab(text: 'Inspiration'),
                    Tab(text: 'Notes'),
                    Tab(text: 'Goals'),
                  ],
                ),
                elevation: 20,
                titleSpacing: 20,
                automaticallyImplyLeading: false),
            body: TabBarView(
              children: [
                // InspirationScreen(inspirationCubit: BlocProvider.of<InspirationCubit>(context)),
                InspirationScreen(),
                NotesScreen(),
                GoalsScreen(),
              ],
            ),
          ),
        );
  });

  Widget buildPage(String text) => Center(
    child: Text(
      text,
      style: TextStyle(fontSize: 28),
    ),
  );
}
