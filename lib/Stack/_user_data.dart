class UserData {
  final String backgroundImageUrl;
  final String userImageUrl;
  final String fullName;
  final String phone;
  final String description;

  UserData({
    required this.backgroundImageUrl,
    required this.userImageUrl,
    required this.fullName,
    required this.phone,
    required this.description,
  });
}

var user1 = UserData(
  backgroundImageUrl:
  'https://raw.githubusercontent.com/o7planning/rs/master/flutter/long-beach.webp',
  userImageUrl:
  'https://raw.githubusercontent.com/o7planning/rs/master/flutter/users/user2.webp',
  fullName: 'Jhon Doc',
  phone: '06-586 478 458',
  description:
  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
);