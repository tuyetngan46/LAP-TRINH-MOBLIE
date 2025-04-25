import 'package:flutter/material.dart';
import 'profile_list_items_section.dart';
import 'social_buttons_section.dart';
import 'user_avatar_section.dart';
import 'user_info_section.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Icon(
              Icons.menu,
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              const UserAvatarSection(
                imageUrl:
                'https://raw.githubusercontent.com/o7planning/rs/master/flutter/users/user1.jpeg',
              ),
              const SizedBox(height: 30),
              const SocialButtonsSection(),
              const SizedBox(height: 30),
              const UserInfoSection(
                title: 'chromicle',
                subtitle: '@amFOSS',
                description: 'Mobile App Developer and Open source enthusiastic',
              ),
              const SizedBox(height: 30),
              const ProfileListItemsSection(),
            ],
          ),
        ),
      ),
    );
  }
}