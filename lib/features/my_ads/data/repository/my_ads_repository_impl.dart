import 'package:domof/features/my_ads/domain/entity/my_ads_entity.dart';
import 'package:domof/features/my_ads/domain/repository/my_ads_repository.dart';
import 'package:domof/core/domain/entity/listing_entity.dart';

import '../../../../core/data/data_sources/remote/api_service.dart';

class MyAdsRepositoryImpl implements MyAdsRepository {
  final ApiService _apiService;

  MyAdsRepositoryImpl(this._apiService);

  @override
  Future<MyAdsEntity> getMyAds() async {
    try {
      final response = await _apiService.getAllListings();
      final entities =
          response.listings.map((model) => model.toEntity()).toList();
      return MyAdsEntity(listings: entities);
    } catch (e) {
      throw Exception('Failed to load my ads: $e');
    }
  }

  @override
  Future<void> deleteMyAd(int id) async {
    throw UnimplementedError('Delete not supported yet');
  }

  @override
  Future<void> updateMyAd(ListingEntity listing) async {
    throw UnimplementedError('Update not supported yet');
  }
}
