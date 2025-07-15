import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:equatable/equatable.dart';

abstract class MyAdsState extends Equatable {
  const MyAdsState();

  @override
  List<Object?> get props => [];
}

class MyAdsInitialState extends MyAdsState {}

class MyAdsLoadingState extends MyAdsState {}

class MyAdsEmptyState extends MyAdsState {}

class MyAdsLoadedState extends MyAdsState {
  final List<ListingEntity> listings;

  const MyAdsLoadedState({required this.listings});

  @override
  List<Object?> get props => [listings];
}

class MyAdsErrorState extends MyAdsState {
  final String message;

  const MyAdsErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
