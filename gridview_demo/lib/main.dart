import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double itemHeight = 60; // Chiều cao cố định của ô
    double screenWidth = MediaQuery.sizeOf(context).width;
    int crossAxisCount = 3;
    double spacing = 10;
    double itemWidth = (screenWidth - (crossAxisCount - 1) * spacing) / crossAxisCount;
    double childAspectRatio = itemWidth / itemHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView.count() Demo'),
      ),
      body: GridView.count(
        primary: false,
        childAspectRatio: childAspectRatio,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: spacing,
        mainAxisSpacing: spacing,
        crossAxisCount: crossAxisCount,
        children: List<int>.generate(23, (index) => index)
            .map(
              (index) => Container(
            color: Colors.teal[100],
            child: Center(child: Text("$index")),
          ),
        )
            .toList(),
      ),
    );
  }
}