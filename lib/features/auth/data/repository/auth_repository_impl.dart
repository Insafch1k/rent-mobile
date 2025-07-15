import 'package:domof/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:domof/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:domof/features/auth/data/model/auth_model.dart';
import 'package:domof/features/auth/domain/entity/auth_entity.dart';
import 'package:domof/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthLocalDataSource authLocalDataSource;
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepositoryImpl(this.authLocalDataSource, this.authRemoteDataSource);

  @override
  Future<AuthEntity> login(String username, String password) async {
    final userData = await authRemoteDataSource.login(username, password);
    final decodedData = authLocalDataSource.decodeUserData(userData);
    final authModel = AuthModel(
      userId: decodedData['userId'] as String? ?? '',
      username: decodedData['username'] as String? ?? '',
      name: decodedData['name'] as String? ?? '',
      userPhone: decodedData['userPhone'] as String? ?? '',
      userNickname: decodedData['userNickname'] as String? ?? '',
      avatarUrl: decodedData['avatarUrl'] as String?,
    );
    await authLocalDataSource.saveUser(
      userId: authModel.userId,
      username: authModel.username,
      name: authModel.name,
      userPhone: authModel.userPhone,
      userNickname: authModel.userNickname,
      avatarUrl: authModel.avatarUrl,
    );
    return AuthEntity(
      userId: authModel.userId,
      username: authModel.username,
      name: authModel.name,
      userPhone: authModel.userPhone,
      userNickname: authModel.userNickname,
      avatarUrl: authModel.avatarUrl,
    );
  }

  @override
  Future<void> logout() async {
    await authLocalDataSource.clearUser();
  }

  @override
  bool isAuthenticated() {
    return authLocalDataSource.getCurrentUser() != null;
  }

  @override
  Future<AuthEntity?> getCurrentUser() async {
    final userData = await authLocalDataSource.getCurrentUser();
    if (userData != null) {
      final decodedData = authLocalDataSource.decodeUserData(userData);
      return AuthEntity(
        userId: decodedData['userId'] as String? ?? '',
        username: decodedData['username'] as String? ?? '',
        name: decodedData['name'] as String? ?? '',
        userPhone: decodedData['userPhone'] as String? ?? '',
        userNickname: decodedData['userNickname'] as String? ?? '',
        avatarUrl: decodedData['avatarUrl'] as String?,
      );
    }
    return null;
  }
}
