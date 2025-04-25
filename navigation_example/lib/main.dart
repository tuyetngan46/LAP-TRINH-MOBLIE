import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Page 1"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Page 2"),
      ),
      body: Center(
        child: Text('Page 2'),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation) {
      return Page2();
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return child; // Không có hiệu ứng hoạt hình
    },
  );
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'o7planning.org',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        '/details': (BuildContext context) => Details(),
        '/about': (BuildContext context) => About(),
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Home Page"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Text('Go to Details Page'),
              onPressed: () {
                Navigator.of(context).pushNamed('/details');
              },
            ),
            ElevatedButton(
              child: Text('Go to About Page'),
              onPressed: () {
                Navigator.of(context).pushNamed('/about');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of Details Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.lightGreen[100],
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title of About Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Close'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.cyan[100],
    );
  }
}