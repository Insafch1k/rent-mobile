import 'package:domof/features/profile/data/data_sources/remote/favorite_remote_data_source.dart';
import 'package:domof/features/profile/domain/entity/favorite_entity.dart';
import 'package:domof/features/profile/domain/repository/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteRemoteDataSource _favoriteRemoteDataSource;

  FavoriteRepositoryImpl(this._favoriteRemoteDataSource);

  @override
  Future<FavoriteEntity> getFavorites() async {
    final favoriteModel = await _favoriteRemoteDataSource.getFavorites();
    final listings =
        favoriteModel.listings.map((model) => model.toEntity()).toList();
    return FavoriteEntity(listings: listings);
  }
}
