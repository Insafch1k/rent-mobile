import '../entity/my_ads_entity.dart';
import '../repository/my_ads_repository.dart';

class GetMyAdsUseCase {
  final MyAdsRepository myAdsRepository;

  const GetMyAdsUseCase(this.myAdsRepository);

  Future<MyAdsEntity> call() async {
    return await myAdsRepository.getMyAds();
  }
}
