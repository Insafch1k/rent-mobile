class AuthEntity {
  final String userId;
  final String username;
  final String name;
  final String userPhone;
  final String userNickname;
  final String? avatarUrl;

  AuthEntity({
    required this.userId,
    required this.username,
    required this.name,
    required this.userPhone,
    required this.userNickname,
    this.avatarUrl,
  });
}
