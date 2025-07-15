import 'package:domof/features/profile/data/data_sources/remote/history_remote_data_source.dart';
import 'package:domof/features/profile/domain/entity/history_entity.dart';
import 'package:domof/features/profile/domain/repository/history_repository.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  final HistoryRemoteDataSource _historyRemoteDataSource;

  const HistoryRepositoryImpl(this._historyRemoteDataSource);

  @override
  Future<HistoryEntity> getHistory() async {
    final historyModel = await _historyRemoteDataSource.getHistory();
    final listings =
        historyModel.listings.map((model) => model.toEntity()).toList();
    return HistoryEntity(listings: listings);
  }
}
