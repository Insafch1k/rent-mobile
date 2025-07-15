import 'package:equatable/equatable.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object?> get props => [];
}

class LoadFavoriteEvent extends FavoriteEvent {}

class ClearFavoriteEvent extends FavoriteEvent {}
