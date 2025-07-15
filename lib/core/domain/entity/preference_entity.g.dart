// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preference_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferenceEntity _$PreferenceEntityFromJson(Map<String, dynamic> json) =>
    PreferenceEntity(
      category: json['category'] as String,
      id: (json['id'] as num).toInt(),
      mailing: json['mailing'] as bool,
      userCity: json['userCity'] as String,
      userDistrict: json['userDistrict'] as String?,
      userId: (json['userId'] as num).toInt(),
      userMaxFloor: (json['userMaxFloor'] as num).toInt(),
      userMaxSquare: (json['userMaxSquare'] as num).toDouble(),
      userMinFloor: (json['userMinFloor'] as num).toInt(),
      userMinPrice: (json['userMinPrice'] as num).toInt(),
      userMinSquare: (json['userMinSquare'] as num).toDouble(),
      userPrice: (json['userPrice'] as num).toInt(),
      userRoomCount: (json['userRoomCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PreferenceEntityToJson(PreferenceEntity instance) =>
    <String, dynamic>{
      'category': instance.category,
      'id': instance.id,
      'mailing': instance.mailing,
      'userCity': instance.userCity,
      'userDistrict': instance.userDistrict,
      'userId': instance.userId,
      'userMaxFloor': instance.userMaxFloor,
      'userMaxSquare': instance.userMaxSquare,
      'userMinFloor': instance.userMinFloor,
      'userMinPrice': instance.userMinPrice,
      'userMinSquare': instance.userMinSquare,
      'userPrice': instance.userPrice,
      'userRoomCount': instance.userRoomCount,
    };
