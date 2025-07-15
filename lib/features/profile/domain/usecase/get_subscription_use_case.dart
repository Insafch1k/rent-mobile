import 'package:domof/features/profile/domain/entity/subscription_entity.dart';

import '../repository/subscription_repository.dart';

class GetSubscriptionUseCase {
  final SubscriptionRepository subscriptionRepository;

  GetSubscriptionUseCase(this.subscriptionRepository);

  Future<SubscriptionEntity> call() async {
    return await subscriptionRepository.getSubscription();
  }
}
