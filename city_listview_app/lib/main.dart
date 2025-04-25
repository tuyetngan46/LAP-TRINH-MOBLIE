import 'package:flutter/material.dart';
import 'city_widget.dart';
import 'city_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City ListView Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cities"),
        backgroundColor: Colors.indigo.withAlpha(180),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buildListView(context),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Footer",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: allCities.length,
      itemBuilder: (BuildContext context, int index) {
        City city = allCities[index];
        return CityWidget(city);
      },
      padding: const EdgeInsets.all(0.0),
      physics: const AlwaysScrollableScrollPhysics(), // Đảm bảo luôn có thể cuộn
    );
  }
}