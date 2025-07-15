import 'package:domof/core/domain/entity/listing_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listing_model.g.dart';

@JsonSerializable()
class ListingModel {
  final String address;
  final String category;
  final int cityId;
  final String? contact;
  final String createdAt;
  final String? deposit;
  final String description;
  final int? districtId;
  final int floor;
  final int id;
  final double latitude;
  final String linkUrl;
  final double longitude;
  final List<String> photos;
  final double price;
  final List<RecommendationModel> recommendations;
  final int rooms;
  final double square;
  final int? userId;
  final String? districtName;

  ListingModel({
    required this.address,
    required this.category,
    required this.cityId,
    this.contact,
    required this.createdAt,
    this.deposit,
    required this.description,
    this.districtId,
    required this.floor,
    required this.id,
    required this.latitude,
    required this.linkUrl,
    required this.longitude,
    required this.photos,
    required this.price,
    required this.recommendations,
    required this.rooms,
    required this.square,
    this.userId,
    this.districtName,
  });

  factory ListingModel.fromJson(Map<String, dynamic> json) =>
      _$ListingModelFromJson(json);

  Map<String, dynamic> toJson() => _$ListingModelToJson(this);

  ListingModel copyWith({
    String? address,
    String? category,
    int? cityId,
    String? contact,
    String? createdAt,
    String? deposit,
    String? description,
    int? districtId,
    int? floor,
    int? id,
    double? latitude,
    String? linkUrl,
    double? longitude,
    List<String>? photos,
    double? price,
    List<RecommendationModel>? recommendations,
    int? rooms,
    double? square,
    int? userId,
    String? districtName,
  }) {
    return ListingModel(
      address: address ?? this.address,
      category: category ?? this.category,
      cityId: cityId ?? this.cityId,
      contact: contact ?? this.contact,
      createdAt: createdAt ?? this.createdAt,
      deposit: deposit ?? this.deposit,
      description: description ?? this.description,
      districtId: districtId ?? this.districtId,
      floor: floor ?? this.floor,
      id: id ?? this.id,
      latitude: latitude ?? this.latitude,
      linkUrl: linkUrl ?? this.linkUrl,
      longitude: longitude ?? this.longitude,
      photos: photos ?? this.photos,
      price: price ?? this.price,
      recommendations: recommendations ?? this.recommendations,
      rooms: rooms ?? this.rooms,
      square: square ?? this.square,
      userId: userId ?? this.userId,
      districtName: districtName ?? this.districtName,
    );
  }

  ListingEntity toEntity() => ListingEntity(
        listing: ListingDetailsEntity(
          address: address,
          category: category,
          cityId: cityId,
          contact: contact ?? '',
          createdAt: createdAt,
          deposit: double.tryParse(deposit ?? '0.0') ?? 0.0,
          description: description,
          districtId: districtId ?? 0,
          floor: floor,
          id: id,
          latitude: latitude,
          linkUrl: linkUrl,
          longitude: longitude,
          photos: photos,
          price: price,
          recommendations: recommendations.map((r) => r.toEntity()).toList(),
          rooms: rooms,
          square: square,
          userId: userId ?? 0,
          districtName: districtName ?? '',
        ),
      );
}

@JsonSerializable()
class RecommendationModel {
  final Map<String, Map<String, List<String>>> criteria;

  RecommendationModel({required this.criteria});

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      _$RecommendationModelFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationModelToJson(this);

  RecommendationModel copyWith({
    Map<String, Map<String, List<String>>>? criteria,
  }) {
    return RecommendationModel(
      criteria: criteria ?? this.criteria,
    );
  }

  RecommendationEntity toEntity() => RecommendationEntity(criteria: criteria);
}
