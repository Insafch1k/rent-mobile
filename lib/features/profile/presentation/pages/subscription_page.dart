import 'package:domof/features/profile/presentation/bloc/subscription/subscription_bloc.dart';
import 'package:domof/core/presentation/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../utils/constants/app_colors.dart';
import '../bloc/subscription/subscription_event.dart';
import '../bloc/subscription/subscription_state.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (context.read<SubscriptionBloc>().state is SubscriptionInitialState) {
        context.read<SubscriptionBloc>().add(LoadSubscriptionEvent());
      }
    });

    return Scaffold(
      appBar: const CustomAppBar(title: 'Подписка'),
      body: BlocBuilder<SubscriptionBloc, SubscriptionState>(
        builder: (context, state) {
          if (state is SubscriptionLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SubscriptionEmptyState) {
            return _buildEmptyState(context);
          } else if (state is SubscriptionActiveState) {
            return _buildActiveState(context);
          } else if (state is SubscriptionInactiveState) {
            return _buildInactiveState(context);
          } else if (state is SubscriptionErrorState) {
            return Center(child: Text('Ошибка: ${state.message}'));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 0))
              ]),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 45.0,
                  ),
                  Image.asset(
                    'assets/images/subscription.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30.0),
                  Text(
                    'Упс.. Здесь пока ничего нет',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontFamily: 'SFPro-Medium',
                    ),
                  ),
                  const SizedBox(height: 80.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: ElevatedButton(
                      onPressed: () => context.go('/home'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.rightGreen,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text(
                        'Вернуться на главную',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'SFPro-Medium',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget _buildActiveState(BuildContext context) {
    return Center(
      child: Text(
        'Ваша подписка активна!',
        style: TextStyle(fontSize: 20.0, fontFamily: 'SFPro-Medium'),
      ),
    );
  }

  Widget _buildInactiveState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ваша подписка неактивна',
            style: TextStyle(fontSize: 20.0, fontFamily: 'SFPro-Medium'),
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () => context.go('/subscription/upgrade'),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.rightGreen,
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text(
              'Оформить подписку',
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'SFPro-Medium',
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
