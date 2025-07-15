import '../../../../core/data/model/listing_model.dart';

class FavoriteModel {
  final List<ListingModel> listings;

  FavoriteModel({required this.listings});

  factory FavoriteModel.fromJson(Map<String, dynamic> json) {
    return FavoriteModel(
      listings: (json['listings'] as List)
          .map((item) => ListingModel.fromJson(item))
          .toList(),
    );
  }
}
