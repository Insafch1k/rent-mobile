import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:domof/features/my_ads/domain/repository/my_ads_repository.dart';

class UpdateMyAdUseCase {
  final MyAdsRepository myAdsRepository;

  UpdateMyAdUseCase(this.myAdsRepository);

  Future<void> call(ListingEntity listing) async {
    throw UnimplementedError('Update is not supported yet');
  }
}
