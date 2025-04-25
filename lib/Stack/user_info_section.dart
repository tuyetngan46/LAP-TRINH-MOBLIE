import 'package:flutter/material.dart';
import '_user_data.dart';

class UserInfoSection extends StatelessWidget {
  final UserData userData;

  const UserInfoSection({required this.userData, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            userData.fullName,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            userData.phone,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(height: 10),
          Text(userData.description),
        ],
      ),
    );
  }
}