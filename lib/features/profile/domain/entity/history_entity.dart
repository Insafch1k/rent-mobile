import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:equatable/equatable.dart';

class HistoryEntity extends Equatable {
  final List<ListingEntity> listings;

  const HistoryEntity({required this.listings});

  @override
  List<Object?> get props => [listings];
}
