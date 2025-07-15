import '../entity/auth_entity.dart';
import '../repository/auth_repository.dart';

class LoginUseCase {
  final AuthRepository authRepository;

  LoginUseCase(this.authRepository);

  Future<AuthEntity> call(String username, String password) {
    return authRepository.login(username, password);
  }
}

class LogoutUseCase {
  final AuthRepository authRepository;

  LogoutUseCase(this.authRepository);

  Future<void> call() {
    return authRepository.logout();
  }
}
