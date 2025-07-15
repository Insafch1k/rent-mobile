import '../../domain/entity/subscription_entity.dart';
import '../../domain/repository/subscription_repository.dart';
import '../data_sources/remote/subscription_remote_data_source.dart';
import '../model/subscription_model.dart';

class SubscriptionRepositoryImpl implements SubscriptionRepository {
  final SubscriptionRemoteDataSource subscriptionRemoteDataSource;

  SubscriptionRepositoryImpl(this.subscriptionRemoteDataSource);

  @override
  Future<SubscriptionEntity> getSubscription() async {
    // Заглушка: подписка не сделана
    final subscriptionModel = SubscriptionModel(isActive: false);
    return SubscriptionEntity(isActive: subscriptionModel.isActive);
  }
}
