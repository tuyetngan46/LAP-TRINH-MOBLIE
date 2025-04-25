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
    Route<ScreenA2> routeA2 = MaterialPageRoute(
      builder: (context) => const ScreenA2(),
      settings: const RouteSettings(
        arguments: "Hello from ScreenA1", // Dữ liệu truyền đi
      ),
    );
    await Navigator.push(context, routeA2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen A1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is Screen A1",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
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
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    // Lấy dữ liệu từ arguments
    final String? data = ModalRoute.of(context)?.settings.arguments as String?;

    return Scaffold(
      appBar: AppBar(title: const Text('Screen A2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "This is Screen A2",
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