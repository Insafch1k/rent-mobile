import '../../../../core/data/model/listing_model.dart';

class MyAdsModel {
  final List<ListingModel> listings;

  MyAdsModel({required this.listings});

  factory MyAdsModel.fromJson(Map<String, dynamic> json) {
    return MyAdsModel(
      listings: (json['listings'] as List)
          .map((item) => ListingModel.fromJson(item))
          .toList(),
    );
  }
}
