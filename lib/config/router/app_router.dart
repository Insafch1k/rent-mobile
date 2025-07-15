import 'package:domof/features/profile/presentation/pages/favorites_page.dart';
import 'package:domof/features/profile/presentation/pages/history_page.dart';
import 'package:domof/core/presentation/pages/home_page.dart';
import 'package:domof/features/list_apartment/presentation/pages/list_apartment_page.dart';
import 'package:domof/core/presentation/pages/login_page.dart';
import 'package:domof/features/my_ads/presentation/pages/my_ads_page.dart';
import 'package:domof/features/profile/presentation/pages/notifications_page.dart';
import 'package:domof/core/presentation/pages/onboarding_page.dart';
import 'package:domof/features/profile/presentation/pages/profile_page.dart';
import 'package:domof/features/profile/presentation/pages/referral_page.dart';
import 'package:domof/features/rent_apartment/presentation/pages/rent_apartment_page.dart';
import 'package:domof/features/profile/presentation/pages/subscription_page.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  redirect: (context, state) async {
    final prefs = await SharedPreferences.getInstance();
    final showLogin = prefs.getBool('showLogin') ?? false;

    if (!showLogin && !state.uri.toString().startsWith('/onboarding')) {
      return '/onboarding';
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'rent',
          builder: (context, state) => const RentApartmentPage(),
        ),
        GoRoute(
          path: 'list',
          builder: (context, state) => const ListApartmentPage(),
        ),
        GoRoute(
          path: 'my_ads',
          builder: (context, state) => const MyAdsPage(),
        ),
        GoRoute(
          path: 'profile',
          builder: (context, state) => const ProfilePage(),
          routes: [
            GoRoute(
              path: 'notifications',
              builder: (context, state) => const NotificationsPage(),
            ),
            GoRoute(
              path: 'subscription',
              builder: (context, state) => const SubscriptionPage(),
            ),
            GoRoute(
              path: 'referral',
              builder: (context, state) => const ReferralPage(),
            ),
            GoRoute(
              path: 'favorites',
              builder: (context, state) => const FavoritesPage(),
            ),
            GoRoute(
              path: 'history',
              builder: (context, state) => const HistoryPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
  ],
);
