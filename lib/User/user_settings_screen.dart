import 'package:flutter/material.dart';
import '_base_screen.dart';

class UserSettingsScreen extends BaseScreen {
  const UserSettingsScreen({super.key, required super.title});

  @override
  Widget buildMainContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Full Name: Tom'),
        const SizedBox(height: 5),
        const Divider(),
        const SizedBox(height: 5),
        const Text('Payment Method:', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 15),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: const Text('Paypal'),
              value: 'paypal',
              groupValue: 'paypal',
              onChanged: (String? value) {},
            ),
            RadioListTile<String>(
              contentPadding: EdgeInsets.zero,
              title: const Text('GPay'),
              value: 'gpay',
              groupValue: 'paypal',
              onChanged: (String? value) {},
            ),
            TextButton(onPressed: () {}, child: const Icon(Icons.check)),
          ],
        ),
      ],
    );
  }
}