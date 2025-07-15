// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PreferenceResponse _$PreferenceResponseFromJson(Map<String, dynamic> json) =>
    PreferenceResponse(
      message: json['message'] as String,
      preference: json['preference'] == null
          ? null
          : PreferenceModel.fromJson(
              json['preference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PreferenceResponseToJson(PreferenceResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'preference': instance.preference,
    };

DistrictResponse _$DistrictResponseFromJson(Map<String, dynamic> json) =>
    DistrictResponse(
      districts: (json['districts'] as List<dynamic>)
          .map((e) => DistrictModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DistrictResponseToJson(DistrictResponse instance) =>
    <String, dynamic>{
      'districts': instance.districts,
    };

CityResponse _$CityResponseFromJson(Map<String, dynamic> json) => CityResponse(
      cities: (json['cities'] as List<dynamic>)
          .map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityResponseToJson(CityResponse instance) =>
    <String, dynamic>{
      'cities': instance.cities,
    };

ListingResponse _$ListingResponseFromJson(Map<String, dynamic> json) =>
    ListingResponse(
      listings: (json['listings'] as List<dynamic>)
          .map((e) => ListingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListingResponseToJson(ListingResponse instance) =>
    <String, dynamic>{
      'listings': instance.listings,
    };

RentalResponse _$RentalResponseFromJson(Map<String, dynamic> json) =>
    RentalResponse(
      hasPreferences: json['hasPreferences'] as bool,
      message: json['message'] as String?,
      listings: (json['listings'] as List<dynamic>?)
          ?.map((e) => ListingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RentalResponseToJson(RentalResponse instance) =>
    <String, dynamic>{
      'hasPreferences': instance.hasPreferences,
      'message': instance.message,
      'listings': instance.listings,
    };
