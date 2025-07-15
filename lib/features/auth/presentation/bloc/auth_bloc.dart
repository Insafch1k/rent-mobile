import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/auth_use_case.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc(this.loginUseCase, this.logoutUseCase) : super(AuthInitialState()) {
    on<CheckAuthEvent>(_onCheckAuthStatus);
    on<LoginEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
  }

  void _onCheckAuthStatus(CheckAuthEvent event, Emitter<AuthState> emit) async {
    final currentUser = await loginUseCase.authRepository.getCurrentUser();
    if (currentUser != null) {
      emit(AuthAuthenticatedState(currentUser));
    } else {
      emit(AuthUnauthenticatedState());
    }
  }

  void _onLogin(LoginEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());
    try {
      final user = await loginUseCase(event.username, event.password);
      emit(AuthAuthenticatedState(user));
    } catch (e) {
      emit(AuthErrorState(e.toString()));
    }
  }

  void _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadingState());
    try {
      await logoutUseCase();
      emit(AuthUnauthenticatedState());
    } catch (e) {
      emit(AuthErrorState(e.toString()));
    }
  }
}
