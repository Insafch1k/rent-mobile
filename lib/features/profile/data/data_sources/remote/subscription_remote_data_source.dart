import '../../model/subscription_model.dart';

abstract class SubscriptionRemoteDataSource {
  Future<SubscriptionModel> getSubscription();
}
