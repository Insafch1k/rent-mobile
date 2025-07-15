import '../entity/history_entity.dart';
import '../repository/history_repository.dart';

class GetHistoryUseCase {
  final HistoryRepository historyRepository;

  GetHistoryUseCase(this.historyRepository);

  Future<HistoryEntity> call() async {
    return await historyRepository.getHistory();
  }
}
