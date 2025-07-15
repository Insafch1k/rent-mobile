import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<String> login(String username, String password) async {
    if (username.isNotEmpty && password.isNotEmpty) {
      return '$username:$username:${_generateName(username)}:${_generatePhone()}:@$username:https://placehold.co/50x50';
    }
    throw Exception('Invalid credentials');
  }

  String _generateName(String username) {
    return 'Иван $username';
  }

  String _generatePhone() {
    return '+7 (999) 123-45-67';
  }
}
