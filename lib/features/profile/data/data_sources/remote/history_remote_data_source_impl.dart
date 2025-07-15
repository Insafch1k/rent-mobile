import '../../model/history_model.dart';
import 'history_remote_data_source.dart';

class HistoryRemoteDataSourceImpl implements HistoryRemoteDataSource {
  @override
  Future<HistoryModel> getHistory() async {
    return Future.value(HistoryModel(listings: []));
  }
}
