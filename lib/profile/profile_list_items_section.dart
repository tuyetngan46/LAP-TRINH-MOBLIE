import 'package:flutter/material.dart';

class ProfileListItemsSection extends StatelessWidget {
  const ProfileListItemsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        ProfileListItem(
          iconData: Icons.shield_outlined,
          text: 'Privacy',
        ),
        ProfileListItem(
          iconData: Icons.history,
          text: 'Purchase History',
        ),
        ProfileListItem(
          iconData: Icons.question_answer_outlined,
          text: 'Help & Support',
        ),
        ProfileListItem(
          iconData: Icons.settings,
          text: 'Settings',
        ),
        ProfileListItem(
          iconData: Icons.person_add_alt,
          text: 'Invite a Friend',
        ),
        ProfileListItem(
          iconData: Icons.logout,
          text: 'Logout',
          hasNavigation: false,
        ),
      ],
    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool hasNavigation;

  const ProfileListItem({
    super.key,
    required this.iconData,
    required this.text,
    this.hasNavigation = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: ListTile(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        tileColor: Colors.grey.shade300,
        leading: Icon(
          iconData,
          size: 30,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: hasNavigation
            ? const Icon(
          Icons.arrow_forward_ios_rounded,
          size: 24,
        )
            : null,
        onTap: () {},
      ),
    );
  }
}