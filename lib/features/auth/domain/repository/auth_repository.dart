import '../entity/auth_entity.dart';

abstract class AuthRepository {
  Future<AuthEntity> login(String username, String password);
  Future<void> logout();
  bool isAuthenticated();
  Future<AuthEntity?> getCurrentUser();
}
