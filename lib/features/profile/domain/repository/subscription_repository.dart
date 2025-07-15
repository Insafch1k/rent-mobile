import '../entity/subscription_entity.dart';

abstract class SubscriptionRepository {
  Future<SubscriptionEntity> getSubscription();
}
