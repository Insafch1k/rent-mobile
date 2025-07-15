import 'package:domof/features/my_ads/data/model/my_ads_model.dart';

import 'my_ads_remote_data_source.dart';

class MyAdsRemoteDataSourceImpl implements MyAdsRemoteDataSource {
  @override
  Future<MyAdsModel> getMyAds() async {
    return Future.value(MyAdsModel(listings: []));
  }
}
