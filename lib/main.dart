// import 'package:flutter/material.dart';
// import 'home_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'User/user_settings_screen.dart';
// import 'User/security_screen.dart';
// import 'User/profile_screen.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// var routeMap = {
//   "/profile": (BuildContext context) => const ProfileScreen(title: 'User Profile'),
//   "/security": (BuildContext context) => const SecurityScreen(title: 'Security'),
//   "/userSettings": (BuildContext context) => const UserSettingsScreen(title: 'User Settings'),
// };
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       routes: routeMap,
//       initialRoute: "/profile",
//     );
//   }
//}

// import 'package:flutter/material.dart';
// import 'Stack/user_profile_screen.dart';
// import 'Stack/_user_data.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: UserProfileScreen(userData: user1),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'toggle_bloc.dart';
import 'toggle_event.dart';
import 'toggle_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ToggleBloc(),
        child: const ToggleScreen(),
      ),
    );
  }
}

class ToggleScreen extends StatelessWidget {
  const ToggleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Button with BLoC'),
      ),
      body: Center(
        child: BlocBuilder<ToggleBloc, ToggleState>(
          builder: (context, state) {
            return GestureDetector(
              onTap: () {
                context.read<ToggleBloc>().add(ToggleButtonPressed());
              },
              child: Image.asset(
                state.isToggled ? 'my-static-rs/power_green.png' : 'my-static-rs/power_red.png',
                width: 100,
                height: 100,
              ),
            );
          },
        ),
      ),
    );
  }
}