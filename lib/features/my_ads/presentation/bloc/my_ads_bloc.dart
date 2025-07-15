import 'package:domof/features/my_ads/presentation/bloc/my_ads_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecase/get_my_ads_use_case.dart';
import 'my_ads_event.dart';

class MyAdsBloc extends Bloc<MyAdsEvent, MyAdsState> {
  final GetMyAdsUseCase getMyAdsUseCase;

  MyAdsBloc(this.getMyAdsUseCase) : super(MyAdsInitialState()) {
    on<LoadMyAdsEvent>(_onLoadMyAds);
    on<DeleteMyAdEvent>(_onDeleteMyAd);
    on<EditMyAdEvent>(_onEditMyAd);
  }

  Future<void> _onLoadMyAds(
    LoadMyAdsEvent event,
    Emitter<MyAdsState> emit,
  ) async {
    emit(MyAdsLoadingState());
    try {
      final myAdsEntity = await getMyAdsUseCase();
      if (myAdsEntity.listings.isEmpty) {
        emit(MyAdsEmptyState());
      } else {
        emit(MyAdsLoadedState(listings: myAdsEntity.listings));
      }
    } catch (e) {
      emit(MyAdsErrorState(e.toString()));
    }
  }

  Future<void> _onDeleteMyAd(
    DeleteMyAdEvent event,
    Emitter<MyAdsState> emit,
  ) async {
    if (state is! MyAdsLoadedState) return;

    emit(MyAdsLoadingState());
    try {
      final myAdsRepository = getMyAdsUseCase.myAdsRepository;
      throw UnimplementedError('Delete not supported yet');
    } catch (e) {
      emit(MyAdsErrorState(e.toString()));
    }
  }

  Future<void> _onEditMyAd(
    EditMyAdEvent event,
    Emitter<MyAdsState> emit,
  ) async {
    if (state is! MyAdsLoadedState) return;

    emit(MyAdsLoadingState());
    try {
      final currentListings = (state as MyAdsLoadedState).listings;
      final listingToEdit =
          currentListings.firstWhere((l) => l.listing.id == event.listingId);
      final updatedListing = listingToEdit.copyWith(
        listing: listingToEdit.listing.copyWith(
          address: 'Edited Address ${DateTime.now()}',
        ),
      );
      final myAdsRepository = getMyAdsUseCase.myAdsRepository;
      throw UnimplementedError('Update not supported yet');
    } catch (e) {
      emit(MyAdsErrorState(e.toString()));
    }
  }
}
