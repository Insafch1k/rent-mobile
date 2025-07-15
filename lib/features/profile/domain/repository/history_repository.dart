import 'package:domof/features/profile/domain/entity/history_entity.dart';

abstract class HistoryRepository {
  Future<HistoryEntity> getHistory();
}
