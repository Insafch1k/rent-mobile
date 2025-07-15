import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listing_entity.g.dart';

@JsonSerializable()
class ListingEntity extends Equatable {
  final bool isFavorite;
  final bool isHistory;
  final ListingDetailsEntity listing;

  const ListingEntity({
    this.isFavorite = false,
    required this.listing,
    this.isHistory = false,
  });

  factory ListingEntity.fromJson(Map<String, dynamic> json) =>
      _$ListingEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ListingEntityToJson(this);

  @override
  List<Object?> get props => [isFavorite, listing];

  ListingEntity copyWith({
    bool? isFavorite,
    bool? isHistory,
    ListingDetailsEntity? listing,
  }) {
    return ListingEntity(
      listing: listing ?? this.listing,
      isHistory: isHistory ?? this.isHistory,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

@JsonSerializable()
class ListingDetailsEntity extends Equatable {
  final String address;
  final String category;
  final int cityId;
  final String? contact;
  final String createdAt;
  final double? deposit;
  final String description;
  final int? districtId;
  final int floor;
  final int id;
  final double latitude;
  final String linkUrl;
  final double longitude;
  final List<String> photos;
  final double price;
  final List<RecommendationEntity> recommendations;
  final int rooms;
  final double square;
  final int? userId;
  final String? districtName;

  const ListingDetailsEntity({
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

  factory ListingDetailsEntity.fromJson(Map<String, dynamic> json) =>
      _$ListingDetailsEntityFromJson(json);

  Map<String, dynamic> toJson() => _$ListingDetailsEntityToJson(this);

  @override
  List<Object?> get props => [
        address,
        category,
        cityId,
        contact,
        createdAt,
        deposit,
        description,
        districtId,
        floor,
        id,
        latitude,
        linkUrl,
        longitude,
        photos,
        price,
        recommendations,
        rooms,
        square,
        userId,
        districtName,
      ];

  ListingDetailsEntity copyWith({
    String? address,
    String? category,
    int? cityId,
    String? contact,
    String? createdAt,
    double? deposit,
    String? description,
    int? districtId,
    int? floor,
    int? id,
    double? latitude,
    String? linkUrl,
    double? longitude,
    List<String>? photos,
    double? price,
    List<RecommendationEntity>? recommendations,
    int? rooms,
    double? square,
    int? userId,
    String? districtName,
  }) {
    return ListingDetailsEntity(
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
}

@JsonSerializable()
class RecommendationEntity extends Equatable {
  final Map<String, Map<String, List<String>>> criteria;

  const RecommendationEntity({required this.criteria});

  factory RecommendationEntity.fromJson(Map<String, dynamic> json) =>
      _$RecommendationEntityFromJson(json);

  Map<String, dynamic> toJson() => _$RecommendationEntityToJson(this);

  @override
  List<Object?> get props => [criteria];
}
