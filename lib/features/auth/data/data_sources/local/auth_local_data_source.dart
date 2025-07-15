import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthLocalDataSource {
  Future<void> saveUser({
    required String userId,
    required String username,
    required String name,
    required String userPhone,
    required String userNickname,
    String? avatarUrl,
  });
  Future<void> clearUser();
  Future<String?> getCurrentUser();
  String encodeUserData(Map<String, dynamic> data);
  Map<String, dynamic> decodeUserData(String? data);
}
