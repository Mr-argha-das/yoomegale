import 'package:flutter/material.dart';
import 'package:yoomegale/desktop/desktop.main.dart';
import 'package:yoomegale/desktop/view/desktop.chat.dart';
import 'package:yoomegale/desktop/view/video.chat.dart';
import 'package:beamer/beamer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        // Return either Widgets or BeamPages if more customization is needed
        '/': (context, state, data) => const DesktopMain(),
        '/videochat': (context, state, data) => const DesktopVideoChat(),
        '/chat':(context, state, data) => const DesktopChat()
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: routerDelegate,
    );
  }
}
