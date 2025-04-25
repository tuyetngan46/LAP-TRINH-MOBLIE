import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigator Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ScreenA1(),
    );
  }
}


class ScreenA1 extends StatelessWidget {
  const ScreenA1({super.key});


  Future<void> gotoScreenA2(BuildContext context) async {
    // Create a Route (Screen)
    Route<ScreenA2> routeA2 = MaterialPageRoute(
      builder: (context) => const ScreenA2(),
    );
    await Navigator.push(context, routeA2); // Go to ScreenA2
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("This is Screen A1"),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                gotoScreenA2(context);
              },
              child: const Text("Go to Screen A2 >>"),
            ),
          ],
        ),
      ),
    );
  }
}


class ScreenA2 extends StatelessWidget {
  const ScreenA2({super.key});


  void back(BuildContext context) {
    Navigator.pop(context); // Back!!
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "This is Screen A2",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                back(context);
              },
              child: const Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}
