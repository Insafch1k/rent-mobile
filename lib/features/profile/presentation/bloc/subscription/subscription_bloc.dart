import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_subscription_use_case.dart';
import 'subscription_event.dart';
import 'subscription_state.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final GetSubscriptionUseCase getSubscriptionUseCase;

  SubscriptionBloc(this.getSubscriptionUseCase)
      : super(SubscriptionInitialState()) {
    on<LoadSubscriptionEvent>(_onLoadSubscription);
  }

  Future<void> _onLoadSubscription(
    LoadSubscriptionEvent event,
    Emitter<SubscriptionState> emit,
  ) async {
    emit(SubscriptionLoadingState());
    try {
      final subscriptionEntity = await getSubscriptionUseCase();
      emit(SubscriptionEmptyState());
    } catch (e) {
      emit(SubscriptionEmptyState());
    }
  }
}
