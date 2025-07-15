import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:equatable/equatable.dart';

abstract class HistoryState extends Equatable {
  const HistoryState();

  @override
  List<Object?> get props => [];
}

class HistoryInitialState extends HistoryState {}

class HistoryLoadingState extends HistoryState {}

class HistoryEmptyState extends HistoryState {}

class HistoryLoadedState extends HistoryState {
  final List<ListingEntity> listings;

  const HistoryLoadedState({required this.listings});

  @override
  List<Object?> get props => [listings];
}

class HistoryErrorState extends HistoryState {
  final String message;

  const HistoryErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
