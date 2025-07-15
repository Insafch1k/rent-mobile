import 'package:json_annotation/json_annotation.dart';
import 'package:domof/core/data/model/preference_model.dart';
import 'package:domof/core/data/model/district_model.dart';
import 'package:domof/core/data/model/city_model.dart';
import 'package:domof/core/data/model/listing_model.dart';

part 'response_models.g.dart';

@JsonSerializable()
class PreferenceResponse {
  final String message;
  final PreferenceModel? preference;

  PreferenceResponse({required this.message, this.preference});

  factory PreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$PreferenceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PreferenceResponseToJson(this);

  PreferenceResponse copyWith({
    String? message,
    PreferenceModel? preference,
  }) {
    return PreferenceResponse(
      message: message ?? this.message,
      preference: preference ?? this.preference,
    );
  }
}

@JsonSerializable()
class DistrictResponse {
  final List<DistrictModel> districts;

  DistrictResponse({required this.districts});

  factory DistrictResponse.fromJson(Map<String, dynamic> json) =>
      _$DistrictResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictResponseToJson(this);

  DistrictResponse copyWith({
    List<DistrictModel>? districts,
  }) {
    return DistrictResponse(
      districts: districts ?? this.districts,
    );
  }
}

@JsonSerializable()
class CityResponse {
  final List<CityModel> cities;

  CityResponse({required this.cities});

  factory CityResponse.fromJson(Map<String, dynamic> json) =>
      _$CityResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CityResponseToJson(this);

  CityResponse copyWith({
    List<CityModel>? cities,
  }) {
    return CityResponse(
      cities: cities ?? this.cities,
    );
  }
}

@JsonSerializable()
class ListingResponse {
  final List<ListingModel> listings;

  ListingResponse({required this.listings});

  factory ListingResponse.fromJson(Map<String, dynamic> json) =>
      _$ListingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListingResponseToJson(this);

  ListingResponse copyWith({
    List<ListingModel>? listings,
  }) {
    return ListingResponse(
      listings: listings ?? this.listings,
    );
  }
}

@JsonSerializable()
class RentalResponse {
  final bool hasPreferences;
  final String? message;
  final List<ListingModel>? listings;

  RentalResponse({
    required this.hasPreferences,
    this.message,
    this.listings,
  });

  factory RentalResponse.fromJson(Map<String, dynamic> json) =>
      _$RentalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RentalResponseToJson(this);

  RentalResponse copyWith({
    bool? hasPreferences,
    String? message,
    List<ListingModel>? listings,
  }) {
    return RentalResponse(
      hasPreferences: hasPreferences ?? this.hasPreferences,
      message: message ?? this.message,
      listings: listings ?? this.listings,
    );
  }
}
