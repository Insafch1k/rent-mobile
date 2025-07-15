import 'package:domof/features/my_ads/data/model/my_ads_model.dart';

abstract class MyAdsRemoteDataSource {
  Future<MyAdsModel> getMyAds();
}
