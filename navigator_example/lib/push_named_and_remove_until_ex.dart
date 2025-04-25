import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class RouteNames {
  static const String routeD1 = "/screenD1";
  static const String routeD2 = "/screenD2";
  static const String routeD3 = "/screenD3";
  static const String routeD4 = "/screenD4";
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
      initialRoute: RouteNames.routeD1,
      routes: {
        RouteNames.routeD1: (context) => const ScreenD1(),
        RouteNames.routeD2: (context) => const ScreenD2(),
        RouteNames.routeD3: (context) => const ScreenD3(),
        RouteNames.routeD4: (context) => const ScreenD4(),
      },
    );
  }
}


class ScreenD1 extends StatelessWidget {
  const ScreenD1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("This is Screen D1"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.routeD2);
              },
              child: const Text("Go to Screen D2 >>"),
            ),
          ],
        ),
      ),
    );
  }
}


class ScreenD2 extends StatelessWidget {
  const ScreenD2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "This is Screen D2",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.routeD3);
              },
              child: const Text("Go to Screen D3 >>"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back!!
              },
              child: const Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}


class ScreenD3 extends StatelessWidget {
  const ScreenD3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "This is Screen D3",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  RouteNames.routeD4, // "/routeD4"
                      (Route<dynamic> route) => route.isFirst,
                );
              },
              child: const Text("Go to Screen D4 >>"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back!!
              },
              child: const Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}


class ScreenD4 extends StatelessWidget {
  const ScreenD4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "This is Screen D4",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Back!!
              },
              child: const Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}
