import '../../../../core/data/model/listing_model.dart';

class HistoryModel {
  final List<ListingModel> listings;

  HistoryModel({required this.listings});

  factory HistoryModel.fromJson(Map<String, dynamic> json) {
    return HistoryModel(
      listings: (json['listings'] as List)
          .map((item) => ListingModel.fromJson(item))
          .toList(),
    );
  }
}
