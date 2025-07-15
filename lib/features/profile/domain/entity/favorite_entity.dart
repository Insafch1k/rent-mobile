import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:equatable/equatable.dart';

class FavoriteEntity extends Equatable {
  final List<ListingEntity> listings;

  const FavoriteEntity({required this.listings});

  @override
  List<Object?> get props => [listings];
}
