import 'package:domof/features/profile/data/model/favorite_model.dart';

abstract class FavoriteRemoteDataSource {
  Future<FavoriteModel> getFavorites();
}
