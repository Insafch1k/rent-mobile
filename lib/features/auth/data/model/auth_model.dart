class AuthModel {
  final String userId;
  final String username;
  final String name;
  final String userPhone;
  final String userNickname;
  final String? avatarUrl;

  AuthModel({
    required this.userId,
    required this.username,
    required this.name,
    required this.userPhone,
    required this.userNickname,
    this.avatarUrl,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      userId: json['userId'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      userPhone: json['userPhone'] as String,
      userNickname: json['userNickname'] as String,
      avatarUrl: json['avatarUrl'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'username': username,
      'name': name,
      'userPhone': userPhone,
      'userNickname': userNickname,
      'avatarUrl': avatarUrl,
    };
  }
}
