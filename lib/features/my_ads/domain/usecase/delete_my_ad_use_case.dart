import 'package:domof/features/my_ads/domain/repository/my_ads_repository.dart';

class DeleteMyAdUseCase {
  final MyAdsRepository myAdsRepository;

  DeleteMyAdUseCase(this.myAdsRepository);

  Future<void> call(int id) async {
    throw UnimplementedError('Delete is not supposed yet');
  }
}
