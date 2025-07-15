import 'package:equatable/equatable.dart';

class SubscriptionEntity extends Equatable {
  final bool isActive;

  const SubscriptionEntity({required this.isActive});

  @override
  List<Object?> get props => [isActive];
}
