import 'package:domof/core/domain/entity/listing_entity.dart';

import '../entity/my_ads_entity.dart';

abstract class MyAdsRepository {
  Future<MyAdsEntity> getMyAds();
  Future<void> deleteMyAd(int id);
  Future<void> updateMyAd(ListingEntity listing);
}
