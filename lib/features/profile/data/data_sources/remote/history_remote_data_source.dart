import 'package:domof/features/profile/data/model/history_model.dart';

abstract class HistoryRemoteDataSource {
  Future<HistoryModel> getHistory();
}
