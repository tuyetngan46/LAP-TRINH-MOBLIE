import 'package:flutter/material.dart';

class SocialButtonsSection extends StatelessWidget {
  const SocialButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CustomSocialButton(
          color: const Color(0xFF102397),
          iconName: 'facebook.png',
          onPressed: () {},
        ),
        CustomSocialButton(
          color: const Color(0xFFff4f38),
          iconName: 'googleplus.png',
          onPressed: () {},
        ),
        CustomSocialButton(
          color: const Color(0xFF38A1F3),
          iconName: 'twitter.png',
          onPressed: () {},
        ),
        CustomSocialButton(
          color: const Color(0xFF2867B2),
          iconName: 'linkedin.png',
          onPressed: () {},
        ),
      ],
    );
  }
}

class CustomSocialButton extends StatelessWidget {
  final Color color;
  final String iconName;
  final Function() onPressed;

  const CustomSocialButton({
    super.key,
    required this.color,
    required this.iconName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: RawMaterialButton(
          shape: const CircleBorder(),
          onPressed: onPressed,
          child: Image.asset(
            'my-static-rs/icon/$iconName',
            width: 24,
            height: 24,
          ),
        ),
      ),
    );
  }
}