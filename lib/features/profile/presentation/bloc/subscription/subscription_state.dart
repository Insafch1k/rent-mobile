import 'package:equatable/equatable.dart';

abstract class SubscriptionState extends Equatable {
  const SubscriptionState();

  @override
  List<Object?> get props => [];
}

class SubscriptionInitialState extends SubscriptionState {}

class SubscriptionLoadingState extends SubscriptionState {}

class SubscriptionActiveState extends SubscriptionState {}

class SubscriptionInactiveState extends SubscriptionState {}

class SubscriptionEmptyState extends SubscriptionState {}

class SubscriptionErrorState extends SubscriptionState {
  final String message;

  const SubscriptionErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
