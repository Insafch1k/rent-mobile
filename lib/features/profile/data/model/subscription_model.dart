import 'package:equatable/equatable.dart';

class SubscriptionModel extends Equatable {
  final bool isActive;

  const SubscriptionModel({required this.isActive});

  @override
  List<Object?> get props => [isActive];
}
