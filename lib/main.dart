import 'package:domof/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:domof/features/my_ads/presentation/bloc/my_ads_bloc.dart';
import 'package:domof/features/profile/presentation/bloc/favorite/favorite_bloc.dart';
import 'package:domof/features/profile/presentation/bloc/history/history_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/profile/presentation/bloc/subscription/subscription_bloc.dart';
import 'injection_container.dart' as di;

import 'config/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (context) => di.sl<AuthBloc>(),
          ),
          BlocProvider<FavoriteBloc>(
            create: (context) => di.sl<FavoriteBloc>(),
          ),
          BlocProvider<HistoryBloc>(
            create: (context) => di.sl<HistoryBloc>(),
          ),
          BlocProvider<SubscriptionBloc>(
            create: (context) => di.sl<SubscriptionBloc>(),
          ),
          BlocProvider<MyAdsBloc>(
            create: (context) => di.sl<MyAdsBloc>(),
          ),
        ],
        child: MaterialApp.router(
          title: 'Domof',
          routerConfig: appRouter,
        ));
  }
}
