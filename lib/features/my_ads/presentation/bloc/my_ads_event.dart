import 'package:equatable/equatable.dart';

abstract class MyAdsEvent extends Equatable {
  const MyAdsEvent();

  @override
  List<Object?> get props => [];
}

class LoadMyAdsEvent extends MyAdsEvent {}

class DeleteMyAdEvent extends MyAdsEvent {
  final int listingId;

  const DeleteMyAdEvent(this.listingId);

  @override
  List<Object?> get props => [listingId];
}

class EditMyAdEvent extends MyAdsEvent {
  final int listingId;

  const EditMyAdEvent(this.listingId);

  @override
  List<Object?> get props => [listingId];
}
