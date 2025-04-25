import 'package:flutter/material.dart';

BoxDecoration avatarDecoration = BoxDecoration(
  shape: BoxShape.circle,
  color: Colors.grey.shade200,
  boxShadow: const [
    BoxShadow(
      color: Colors.white,
      offset: Offset(10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(10, -10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-10, 10),
      blurRadius: 10,
    ),
    BoxShadow(
      color: Colors.white,
      offset: Offset(-10, -10),
      blurRadius: 10,
    ),
  ],
);

class UserAvatarSection extends StatelessWidget {
  final String imageUrl;

  const UserAvatarSection({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      padding: const EdgeInsets.all(8),
      decoration: avatarDecoration,
      child: Container(
        decoration: avatarDecoration,
        padding: const EdgeInsets.all(3),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}