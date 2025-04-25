import 'package:flutter/material.dart';
import 'package:navigator_example/push_named_ex1.dart';

class ScreenB1 extends StatelessWidget {
  const ScreenB1({super.key});

  Future<void> gotoNamedScreen(BuildContext context, String routeName) async {
    await Navigator.pushNamed(
      context,
      routeName,
      arguments: "Hello from ScreenB1", // Dữ liệu truyền đi
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is Screen B1",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                gotoNamedScreen(context, RouteNames.routeB2);
              },
              child: const Text("Go to Screen B2 >>"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                gotoNamedScreen(context, RouteNames.routeB3);
              },
              child: const Text("Go to Screen B3 >>"),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenB2 extends StatelessWidget {
  const ScreenB2({super.key});

  void back(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('Screen B2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is Screen B2",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              "Data: ${data ?? 'No data'}",
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => back(context),
              child: const Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenB3 extends StatelessWidget {
  const ScreenB3({super.key});

  void back(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('Screen B3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is Screen B3",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Text(
              "Data: ${data ?? 'No data'}",
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => back(context),
              child: const Text("<< Back"),
            ),
          ],
        ),
      ),
    );
  }
}