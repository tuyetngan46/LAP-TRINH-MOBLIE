import 'package:flutter/material.dart';
import '_base_screen.dart';

class ProfileScreen extends BaseScreen {
  const ProfileScreen({super.key, required super.title});

  @override
  Widget buildMainContent(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(
            children: [
              Icon(Icons.person, size: 80, color: Colors.indigo),
              Text(
                'Tom',
                style: TextStyle(color: Colors.indigo),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text('Full Name: Tom'),
        SizedBox(height: 15),
        Text('Address: American'),
      ],
    );
  }
}