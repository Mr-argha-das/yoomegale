import 'package:flutter/material.dart';
import 'package:yoomegale/desktop/desktop.main.dart';
import 'package:yoomegale/desktop/view/desktop.chat.dart';
import 'package:yoomegale/desktop/view/video.chat.dart';
import 'package:beamer/beamer.dart';
import 'package:yoomegale/phone/phone.main.dart';
import 'package:yoomegale/phone/view/phone.chat.dart';
import 'package:yoomegale/phone/view/phone.video.dart';

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
        '/': (context, state, data) => LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return const DesktopMain();
              } else {
                return const PhoneMainScreen();
              }
            }),
        '/videochat': (context, state, data) => LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return const DesktopVideoChat();
              } else {
                return const PhoneVideoChat();
              }
            }),
        '/chat': (context, state, data) => LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 600) {
                return const DesktopChat();
              } else {
                return const PhoneChat();
              }
            })
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
