import 'package:flutter/material.dart';
import 'package:navigator_example/push_named_ex1_screens.dart';

void main() {
  runApp(const MyApp());
}


class RouteNames {
  static const String routeB1 = "/screenB1";
  static const String routeB2 = "/screenB2";
  static const String routeB3 = "/screenB3";
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigator Demo (pushNamed)',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteNames.routeB1,
      routes: {
        RouteNames.routeB1: (context) => const ScreenB1(),
        RouteNames.routeB2: (context) => const ScreenB2(),
        RouteNames.routeB3: (context) => const ScreenB3(),
      },
    );
  }
}
