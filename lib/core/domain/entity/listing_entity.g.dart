// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingEntity _$ListingEntityFromJson(Map<String, dynamic> json) =>
    ListingEntity(
      isFavorite: json['isFavorite'] as bool? ?? false,
      listing: ListingDetailsEntity.fromJson(
          json['listing'] as Map<String, dynamic>),
      isHistory: json['isHistory'] as bool? ?? false,
    );

Map<String, dynamic> _$ListingEntityToJson(ListingEntity instance) =>
    <String, dynamic>{
      'isFavorite': instance.isFavorite,
      'isHistory': instance.isHistory,
      'listing': instance.listing,
    };

ListingDetailsEntity _$ListingDetailsEntityFromJson(
        Map<String, dynamic> json) =>
    ListingDetailsEntity(
      address: json['address'] as String,
      category: json['category'] as String,
      cityId: (json['cityId'] as num).toInt(),
      contact: json['contact'] as String?,
      createdAt: json['createdAt'] as String,
      deposit: (json['deposit'] as num?)?.toDouble(),
      description: json['description'] as String,
      districtId: (json['districtId'] as num?)?.toInt(),
      floor: (json['floor'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      latitude: (json['latitude'] as num).toDouble(),
      linkUrl: json['linkUrl'] as String,
      longitude: (json['longitude'] as num).toDouble(),
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      recommendations: (json['recommendations'] as List<dynamic>)
          .map((e) => RecommendationEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rooms: (json['rooms'] as num).toInt(),
      square: (json['square'] as num).toDouble(),
      userId: (json['userId'] as num?)?.toInt(),
      districtName: json['districtName'] as String?,
    );

Map<String, dynamic> _$ListingDetailsEntityToJson(
        ListingDetailsEntity instance) =>
    <String, dynamic>{
      'address': instance.address,
      'category': instance.category,
      'cityId': instance.cityId,
      'contact': instance.contact,
      'createdAt': instance.createdAt,
      'deposit': instance.deposit,
      'description': instance.description,
      'districtId': instance.districtId,
      'floor': instance.floor,
      'id': instance.id,
      'latitude': instance.latitude,
      'linkUrl': instance.linkUrl,
      'longitude': instance.longitude,
      'photos': instance.photos,
      'price': instance.price,
      'recommendations': instance.recommendations,
      'rooms': instance.rooms,
      'square': instance.square,
      'userId': instance.userId,
      'districtName': instance.districtName,
    };

RecommendationEntity _$RecommendationEntityFromJson(
        Map<String, dynamic> json) =>
    RecommendationEntity(
      criteria: (json['criteria'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(
                  k, (e as List<dynamic>).map((e) => e as String).toList()),
            )),
      ),
    );

Map<String, dynamic> _$RecommendationEntityToJson(
        RecommendationEntity instance) =>
    <String, dynamic>{
      'criteria': instance.criteria,
    };
