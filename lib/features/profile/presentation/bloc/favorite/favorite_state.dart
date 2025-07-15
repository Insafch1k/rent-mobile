import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:equatable/equatable.dart';

abstract class FavoriteState extends Equatable {
  const FavoriteState();

  @override
  List<Object?> get props => [];
}

class FavoriteInitialState extends FavoriteState {}

class FavoriteLoadingState extends FavoriteState {}

class FavoriteEmptyState extends FavoriteState {}

class FavoriteLoadedState extends FavoriteState {
  final List<ListingEntity> listings;

  const FavoriteLoadedState({required this.listings});

  @override
  List<Object?> get props => [listings];
}

class FavoriteErrorState extends FavoriteState {
  final String message;

  const FavoriteErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
