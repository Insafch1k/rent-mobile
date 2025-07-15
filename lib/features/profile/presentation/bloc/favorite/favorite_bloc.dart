import 'package:domof/features/profile/domain/usecase/get_favorites_use_case.dart';
import 'package:domof/features/profile/presentation/bloc/favorite/favorite_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'favorite_event.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final GetFavoritesUseCase getFavoritesUseCase;

  FavoriteBloc(this.getFavoritesUseCase) : super(FavoriteInitialState()) {
    on<LoadFavoriteEvent>(_onLoadFavorite);
    on<ClearFavoriteEvent>(_onClearFavorite);
  }

  Future<void> _onLoadFavorite(
    LoadFavoriteEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(FavoriteLoadingState());
    try {
      final favoriteModel = await getFavoritesUseCase();
      if (favoriteModel.listings.isEmpty) {
        emit(FavoriteEmptyState());
      } else {
        emit(FavoriteLoadedState(listings: favoriteModel.listings));
      }
    } catch (e) {
      emit(FavoriteErrorState(e.toString()));
    }
  }

  Future<void> _onClearFavorite(
    ClearFavoriteEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    emit(FavoriteLoadingState());
    try {
      emit(FavoriteEmptyState());
    } catch (e) {
      emit(FavoriteErrorState(e.toString()));
    }
  }
}
