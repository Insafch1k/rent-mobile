import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'city_entity.g.dart';

@JsonSerializable()
class CityEntity extends Equatable {
  final int id;
  final String name;

  const CityEntity({
    required this.id,
    required this.name,
  });

  factory CityEntity.fromJson(Map<String, dynamic> json) =>
      _$CityEntityFromJson(json);

  Map<String, dynamic> toJson() => _$CityEntityToJson(this);

  CityEntity copyWith({
    int? id,
    String? name,
  }) {
    return CityEntity(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [id, name];
}
