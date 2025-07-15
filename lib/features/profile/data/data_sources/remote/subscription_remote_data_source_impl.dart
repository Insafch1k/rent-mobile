import 'package:domof/features/profile/data/data_sources/remote/subscription_remote_data_source.dart';

import '../../model/subscription_model.dart';

class SubscriptionRemoteDataSourceImpl implements SubscriptionRemoteDataSource {
  @override
  Future<SubscriptionModel> getSubscription() async {
    return Future.value(SubscriptionModel(isActive: false));
  }
}
