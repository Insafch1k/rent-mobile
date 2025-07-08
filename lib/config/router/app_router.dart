import 'package:go_router/go_router.dart';

import '../../presentation/pages/home_page.dart';
import '../../presentation/pages/list_apartment_page.dart';
import '../../presentation/pages/my_ads_page.dart';
import '../../presentation/pages/profile_page.dart';
import '../../presentation/pages/rent_apartment_page.dart';

final GoRouter appRouter = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomePage(), routes: [
    GoRoute(
        path: 'rent', builder: (context, state) => const RentApartmentPage()),
    GoRoute(
        path: 'list', builder: (context, state) => const ListApartmentPage()),
    GoRoute(path: 'profile', builder: (context, state) => const ProfilePage()),
    GoRoute(path: 'my_ads', builder: (context, state) => const MyAdsPage()),
  ])
]);
