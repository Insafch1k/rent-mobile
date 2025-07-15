import 'package:dio/dio.dart';
import 'package:domof/core/data/data_sources/remote/api_service.dart';
import 'package:domof/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:domof/features/auth/data/data_sources/local/auth_local_data_source_impl.dart';
import 'package:domof/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:domof/features/auth/data/data_sources/remote/auth_remote_data_source_impl.dart';
import 'package:domof/features/my_ads/data/data_sources/remote/my_ads_remote_data_source.dart';
import 'package:domof/features/my_ads/data/data_sources/remote/my_ads_remote_data_source_impl.dart';
import 'package:domof/features/my_ads/data/repository/my_ads_repository_impl.dart';
import 'package:domof/features/my_ads/domain/repository/my_ads_repository.dart';
import 'package:domof/features/my_ads/domain/usecase/delete_my_ad_use_case.dart';
import 'package:domof/features/my_ads/domain/usecase/get_my_ads_use_case.dart';
import 'package:domof/features/my_ads/domain/usecase/update_my_ad_use_case.dart';
import 'package:domof/features/my_ads/presentation/bloc/my_ads_bloc.dart';
import 'package:domof/features/profile/data/data_sources/remote/favorite_remote_data_source_impl.dart';
import 'package:domof/features/auth/data/repository/auth_repository_impl.dart';
import 'package:domof/features/profile/data/data_sources/remote/history_remote_data_source.dart';
import 'package:domof/features/profile/data/data_sources/remote/history_remote_data_source_impl.dart';
import 'package:domof/features/profile/data/data_sources/remote/subscription_remote_data_source.dart';
import 'package:domof/features/profile/data/repository/favorite_repository_impl.dart';
import 'package:domof/features/auth/domain/repository/auth_repository.dart';
import 'package:domof/features/profile/data/repository/history_repository_impl.dart';
import 'package:domof/features/profile/data/repository/subscription_repository_impl.dart';
import 'package:domof/features/profile/domain/repository/favorite_repository.dart';
import 'package:domof/features/auth/domain/usecase/auth_use_case.dart';
import 'package:domof/features/profile/domain/repository/history_repository.dart';
import 'package:domof/features/profile/domain/repository/subscription_repository.dart';
import 'package:domof/features/profile/domain/usecase/get_favorites_use_case.dart';
import 'package:domof/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:domof/features/profile/domain/usecase/get_history_use_case.dart';
import 'package:domof/features/profile/domain/usecase/get_subscription_use_case.dart';
import 'package:domof/features/profile/presentation/bloc/history/history_bloc.dart';
import 'package:domof/features/profile/presentation/bloc/subscription/subscription_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import 'features/profile/data/data_sources/remote/favorite_remote_data_source.dart';
import 'features/profile/data/data_sources/remote/subscription_remote_data_source_impl.dart';
import 'features/profile/presentation/bloc/favorite/favorite_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //============================================================================
  // External Dependencies and API service
  //============================================================================
  sl.registerSingleton<http.Client>(http.Client());
  sl.registerSingleton<Dio>(Dio());
  sl.registerSingleton<ApiService>(ApiService(sl()));

  //============================================================================
  // Data Sources
  //============================================================================
  sl.registerSingleton<AuthLocalDataSource>(AuthLocalDataSourceImpl());
  sl.registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSourceImpl());
  sl.registerSingleton<FavoriteRemoteDataSource>(
      FavoriteRemoteDataSourceImpl());
  sl.registerSingleton<HistoryRemoteDataSource>(HistoryRemoteDataSourceImpl());
  sl.registerSingleton<SubscriptionRemoteDataSource>(
      SubscriptionRemoteDataSourceImpl());
  sl.registerSingleton<MyAdsRemoteDataSource>(MyAdsRemoteDataSourceImpl());

  //============================================================================
  // Repository
  //============================================================================
  sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(sl<AuthLocalDataSource>(), sl<AuthRemoteDataSource>()),
  );
  sl.registerSingleton<FavoriteRepository>(
      FavoriteRepositoryImpl(sl<FavoriteRemoteDataSource>()));
  sl.registerSingleton<HistoryRepository>(
      HistoryRepositoryImpl(sl<HistoryRemoteDataSource>()));
  sl.registerSingleton<SubscriptionRepository>(
      SubscriptionRepositoryImpl(sl<SubscriptionRemoteDataSource>()));
  sl.registerSingleton<MyAdsRepository>(MyAdsRepositoryImpl(sl()));

  //============================================================================
  // Use Cases
  //============================================================================
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));
  sl.registerSingleton<LogoutUseCase>(LogoutUseCase(sl()));
  sl.registerSingleton<GetFavoritesUseCase>(GetFavoritesUseCase(sl()));
  sl.registerSingleton<GetHistoryUseCase>(GetHistoryUseCase(sl()));
  sl.registerSingleton<GetSubscriptionUseCase>(GetSubscriptionUseCase(sl()));
  sl.registerSingleton<GetMyAdsUseCase>(GetMyAdsUseCase(sl()));
  sl.registerSingleton<DeleteMyAdUseCase>(DeleteMyAdUseCase(sl()));
  sl.registerSingleton<UpdateMyAdUseCase>(UpdateMyAdUseCase(sl()));

  //============================================================================
  // Bloc
  //============================================================================
  sl.registerSingleton<AuthBloc>(AuthBloc(sl(), sl()));
  sl.registerSingleton<FavoriteBloc>(FavoriteBloc(sl()));
  sl.registerSingleton<HistoryBloc>(HistoryBloc(sl()));
  sl.registerSingleton<SubscriptionBloc>(SubscriptionBloc(sl()));
  sl.registerSingleton<MyAdsBloc>(MyAdsBloc(sl()));
}
