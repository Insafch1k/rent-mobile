import 'package:domof/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:domof/core/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/auth/presentation/bloc/auth_event.dart';
import '../../../features/auth/presentation/bloc/auth_state.dart';

class RegisterPage extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _nameController = TextEditingController();
  final _userPhoneController = TextEditingController();
  final _userNicknameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _avatarUrlController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthenticatedState) {
          context.go('/profile');
        } else if (state is AuthErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Регистрация'),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                      labelText: 'Имя пользователя (username)'),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _nameController,
                  decoration:
                      const InputDecoration(labelText: 'Полное имя (name)'),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _userPhoneController,
                  decoration:
                      const InputDecoration(labelText: 'Телефон (userPhone)'),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _userNicknameController,
                  decoration: const InputDecoration(
                      labelText: 'Никнейм (userNickname, с @)'),
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Пароль'),
                  obscureText: true,
                ),
                const SizedBox(height: 10.0),
                TextField(
                  controller: _avatarUrlController,
                  decoration: const InputDecoration(
                      labelText: 'URL аватарки (опционально)'),
                ),
                const SizedBox(height: 20.0),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    if (state is AuthLoadingState) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    return ElevatedButton(
                      onPressed: () {
                        context.read<AuthBloc>().add(LoginEvent(
                              _usernameController.text,
                              _passwordController.text,
                            ));
                      },
                      child: const Text('Зарегистрироваться'),
                    );
                  },
                ),
                const SizedBox(height: 10.0),
                TextButton(
                  onPressed: () => context.go('/login'),
                  child: const Text('Уже есть аккаунт? Войти'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
