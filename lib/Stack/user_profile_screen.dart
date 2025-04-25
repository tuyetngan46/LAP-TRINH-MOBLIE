import 'package:flutter/material.dart';
import 'user_avatar_section.dart';
import 'user_info_section.dart';
import '_user_data.dart';

class UserProfileScreen extends StatelessWidget {
  final UserData userData;

  const UserProfileScreen({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserAvatarSection(userData: userData),
            const SizedBox(height: 60),
            UserInfoSection(userData: userData),
          ],
        ),
      ),
    );
  }
}