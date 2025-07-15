// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictEntity _$DistrictEntityFromJson(Map<String, dynamic> json) =>
    DistrictEntity(
      cityId: (json['cityId'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$DistrictEntityToJson(DistrictEntity instance) =>
    <String, dynamic>{
      'cityId': instance.cityId,
      'id': instance.id,
      'name': instance.name,
    };
