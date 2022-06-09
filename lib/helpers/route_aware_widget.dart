import 'package:flutter/material.dart';
//
// class RouteAwareWidget extends StatefulWidget {
//   State<RouteAwareWidget> createState() => RouteAwareWidgetState();
// }
// // https://stackoverflow.com/questions/57217939/how-to-make-overlayentry-disappear-after-navigating-with-pushnamed-in-flutter
// // Implement RouteAware in a widget's state and subscribe it to the RouteObserver.
// class RouteAwareWidgetState extends State<RouteAwareWidget> with RouteAware {
//
//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     // routeObserver is the global variable we created before
//     routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute);
//   }
//
//   @override
//   void dispose() {
//     routeObserver.unsubscribe(this);
//     super.dispose();
//   }
//
//   @override
//   void didPush() {
//     // Route was pushed onto navigator and is now topmost route.
//   }
//
//   @override
//   void didPopNext() {
//     // Covering route was popped off the navigator.
//   }
//
//   @override
//   Widget build(BuildContext context) => Container();
//
// }