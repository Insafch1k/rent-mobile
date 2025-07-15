import 'package:domof/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:domof/core/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../auth/presentation/bloc/auth_state.dart';
import '../../../../core/presentation/widgets/custom_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final user = state is AuthAuthenticatedState ? state.user : null;
        return Scaffold(
          appBar: const CustomAppBar(
            title: 'Профиль',
            showLogoutButton: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: user?.avatarUrl != null
                              ? NetworkImage(user!.avatarUrl!)
                              : const NetworkImage(
                                  'https://placehold.co/50x50'),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          user?.name ?? 'Гость',
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'SFPro-Medium',
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          user?.userPhone ?? '',
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                            fontFamily: 'SFPro-Light',
                          ),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          user?.userNickname ?? '',
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'SFPro-Light',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                    height: 60.0,
                    child: CustomButton(
                      label: 'Уведомления',
                      imagePath: 'assets/images/notifications.png',
                      onPressed: () => context.push('/profile/notifications'),
                      color: Colors.white,
                      width: double.infinity,
                      height: 60.0,
                      imageWidth: 40.0,
                      imageHeight: 40.0,
                      imageOffsetHorizontal: 0.0,
                      imageOffsetVertical: 0.0,
                      textColor: Colors.black,
                      maxTextWidth: 250.0,
                      circularRadius: 15,
                      imagePosition: ImagePosition.left,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60.0,
                    child: CustomButton(
                      label: 'Подписка',
                      imagePath: 'assets/images/subscription.png',
                      onPressed: () => context.push('/profile/subscription'),
                      color: Colors.white,
                      width: double.infinity,
                      height: 60.0,
                      imageWidth: 40.0,
                      imageHeight: 40.0,
                      imageOffsetHorizontal: 0.0,
                      imageOffsetVertical: 0.0,
                      textColor: Colors.black,
                      maxTextWidth: 250.0,
                      circularRadius: 15,
                      imagePosition: ImagePosition.left,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60.0,
                    child: CustomButton(
                      label: 'Реферальная система',
                      imagePath: 'assets/images/referral.png',
                      onPressed: () => context.push('/profile/referral'),
                      color: Colors.white,
                      width: double.infinity,
                      height: 60.0,
                      imageWidth: 40.0,
                      imageHeight: 40.0,
                      imageOffsetHorizontal: 0.0,
                      imageOffsetVertical: 0.0,
                      textColor: Colors.black,
                      maxTextWidth: 250.0,
                      circularRadius: 15,
                      imagePosition: ImagePosition.left,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60.0,
                    child: CustomButton(
                      label: 'Избранное',
                      imagePath: 'assets/images/favorites.png',
                      onPressed: () => context.push('/profile/favorites'),
                      color: Colors.white,
                      width: double.infinity,
                      height: 60.0,
                      imageWidth: 40.0,
                      imageHeight: 40.0,
                      imageOffsetHorizontal: 0.0,
                      imageOffsetVertical: 0.0,
                      textColor: Colors.black,
                      maxTextWidth: 250.0,
                      circularRadius: 15,
                      imagePosition: ImagePosition.left,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    height: 60.0,
                    child: CustomButton(
                      label: 'История просмотра',
                      imagePath: 'assets/images/history.png',
                      onPressed: () => context.push('/profile/history'),
                      color: Colors.white,
                      width: double.infinity,
                      height: 60.0,
                      imageWidth: 40.0,
                      imageHeight: 40.0,
                      imageOffsetHorizontal: 0.0,
                      imageOffsetVertical: 0.0,
                      textColor: Colors.black,
                      maxTextWidth: 250.0,
                      circularRadius: 15,
                      imagePosition: ImagePosition.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
