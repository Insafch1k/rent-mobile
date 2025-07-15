import 'package:shared_preferences/shared_preferences.dart';
import 'auth_local_data_source.dart';

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const String _userKey = 'current_user';

  @override
  Future<void> saveUser({
    required String userId,
    required String username,
    required String name,
    required String userPhone,
    required String userNickname,
    String? avatarUrl,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final userData = {
      'userId': userId,
      'username': username,
      'name': name,
      'userPhone': userPhone,
      'userNickname': userNickname,
      'avatarUrl': avatarUrl,
    };
    await prefs.setString(_userKey, encodeUserData(userData));
  }

  @override
  Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }

  @override
  Future<String?> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_userKey);
  }

  @override
  String encodeUserData(Map<String, dynamic> data) {
    return '${data['userId']}:${data['username']}:${data['name']}:${data['userPhone']}:${data['userNickname']}:${data['avatarUrl'] ?? ''}';
  }

  @override
  Map<String, dynamic> decodeUserData(String? data) {
    if (data == null) return {};
    final parts = data.split(':');
    return {
      'userId': parts.isNotEmpty ? parts[0] : '',
      'username': parts.length > 1 ? parts[1] : '',
      'name': parts.length > 2 ? parts[2] : '',
      'userPhone': parts.length > 3 ? parts[3] : '',
      'userNickname': parts.length > 4 ? parts[4] : '',
      'avatarUrl': parts.length > 5 && parts[5].isNotEmpty ? parts[5] : null,
    };
  }
}
