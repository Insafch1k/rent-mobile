import 'package:domof/core/domain/entity/city_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city_model.g.dart';

@JsonSerializable()
class CityModel {
  final int id;
  final String name;

  CityModel({
    required this.id,
    required this.name,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) =>
      _$CityModelFromJson(json);

  Map<String, dynamic> toJson() => _$CityModelToJson(this);

  CityModel copyWith({
    int? id,
    String? name,
  }) {
    return CityModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  CityEntity toEntity() => CityEntity(
        id: id,
        name: name,
      );
}
