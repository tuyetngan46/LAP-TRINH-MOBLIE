import 'package:flutter/material.dart';
import '_base_screen.dart';

class SecurityScreen extends BaseScreen {
  const SecurityScreen({super.key, required super.title});

  @override
  Widget buildMainContent(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Full Name: Tom'),
        SizedBox(height: 5),
        Divider(),
        SizedBox(height: 5),
        Text('Change Password:', style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 15),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            label: Text('New Password'),
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 15),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            label: Text('Confirm'),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}