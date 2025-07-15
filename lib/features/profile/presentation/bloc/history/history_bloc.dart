import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_history_use_case.dart';
import 'history_event.dart';
import 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetHistoryUseCase getHistoryUseCase;

  HistoryBloc(this.getHistoryUseCase) : super(HistoryInitialState()) {
    on<LoadHistoryEvent>(_onLoadHistory);
    on<ClearHistoryEvent>(_onClearHistory);
  }

  Future<void> _onLoadHistory(
    LoadHistoryEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(HistoryLoadingState());
    try {
      final historyEntity = await getHistoryUseCase();
      if (historyEntity.listings.isEmpty) {
        emit(HistoryEmptyState());
      } else {
        emit(HistoryLoadedState(listings: historyEntity.listings));
      }
    } catch (e) {
      emit(HistoryErrorState(e.toString()));
    }
  }

  Future<void> _onClearHistory(
    ClearHistoryEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(HistoryLoadingState());
    try {
      emit(HistoryEmptyState());
    } catch (e) {
      emit(HistoryErrorState(e.toString()));
    }
  }
}
