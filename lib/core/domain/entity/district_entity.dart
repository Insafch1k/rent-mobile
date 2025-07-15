import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'district_entity.g.dart';

@JsonSerializable()
class DistrictEntity extends Equatable {
  final int cityId;
  final int id;
  final String name;

  const DistrictEntity({
    required this.cityId,
    required this.id,
    required this.name,
  });

  factory DistrictEntity.fromJson(Map<String, dynamic> json) =>
      _$DistrictEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictEntityToJson(this);

  DistrictEntity copyWith({
    int? cityId,
    int? id,
    String? name,
  }) {
    return DistrictEntity(
      cityId: cityId ?? this.cityId,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [cityId, id, name];
}
