import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:equatable/equatable.dart';

class MyAdsEntity extends Equatable {
  final List<ListingEntity> listings;

  const MyAdsEntity({required this.listings});

  @override
  List<Object?> get props => [listings];
}
