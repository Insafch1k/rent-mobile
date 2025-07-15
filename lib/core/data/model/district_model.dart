import 'package:domof/core/domain/entity/district_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district_model.g.dart';

@JsonSerializable()
class DistrictModel {
  final int cityId;
  final int id;
  final String name;

  DistrictModel({
    required this.cityId,
    required this.id,
    required this.name,
  });

  factory DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictModelFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictModelToJson(this);

  DistrictModel copyWith({
    int? cityId,
    int? id,
    String? name,
  }) {
    return DistrictModel(
      cityId: cityId ?? this.cityId,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  DistrictEntity toEntity() => DistrictEntity(
        cityId: cityId,
        id: id,
        name: name,
      );
}
