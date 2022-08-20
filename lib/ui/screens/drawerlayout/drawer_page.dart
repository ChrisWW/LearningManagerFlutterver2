import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_production_boilerplate/bloc/user_account/user_account_bloc.dart';
import 'dart:math';

import 'package:flutter_production_boilerplate/ui/screens/home/home_screen.dart';

class DrawerPage extends StatefulWidget {
  static const String route = '/home';
  const DrawerPage({Key? key}) : super(key: key);

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[400]!,
                  Colors.blue[800]!,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // TODO przekazac info z google
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                              "https://api.uifaces.co/our-content/donated/gPZwCbdS.jpg"),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Eren Jager",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(children: [
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Profile",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.event,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Inspirations",
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          BlocProvider.of<UserAccountBloc>(context).add(
                            TryToLogOut(),
                          );
                        },
                        leading: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Logout",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: const Duration(milliseconds: 500),
              builder: (_, double val, __) {
                return (Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..setEntry(0, 3, 200 * val)
                      ..rotateY((pi / 6) * val),
                    // TODO
                    child: const HomeScreen()
                    ));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if (e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },

            // onTap: () {
            //   setState(() {
            //     value == 0 ? value - 1 : value = 0; // if the value is equal to 0 then when we tap it will become 1 else it become 0
            //
            //   });
            // }
          )
        ],
      ),
    );
  }
}
