import 'package:domof/features/profile/domain/entity/favorite_entity.dart';
import 'package:domof/features/profile/domain/repository/favorite_repository.dart';

class GetFavoritesUseCase {
  final FavoriteRepository favoriteRepository;

  GetFavoritesUseCase(this.favoriteRepository);

  Future<FavoriteEntity> call() async {
    return await favoriteRepository.getFavorites();
  }
}
