import 'package:flutter/material.dart';

class TopMenuSection extends StatelessWidget {
  const TopMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
            icon: const Icon(Icons.account_circle_outlined),
            label: const Text("Profile"),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/security');
            },
            icon: const Icon(Icons.security),
            label: const Text("Security"),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.of(context).pushNamed('/userSettings');
            },
            icon: const Icon(Icons.settings),
            label: const Text("Settings"),
          ),
        ],
      ),
    );
  }
}