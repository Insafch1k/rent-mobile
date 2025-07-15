import 'package:domof/features/profile/domain/entity/favorite_entity.dart';

abstract class FavoriteRepository {
  Future<FavoriteEntity> getFavorites();
}
