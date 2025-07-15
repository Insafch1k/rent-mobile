import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preference_entity.g.dart';

@JsonSerializable()
class PreferenceEntity extends Equatable {
  final String category;
  final int id;
  final bool mailing;
  final String userCity;
  final String? userDistrict;
  final int userId;
  final int userMaxFloor;
  final double userMaxSquare;
  final int userMinFloor;
  final int userMinPrice;
  final double userMinSquare;
  final int userPrice;
  final int? userRoomCount;

  const PreferenceEntity({
    required this.category,
    required this.id,
    required this.mailing,
    required this.userCity,
    this.userDistrict,
    required this.userId,
    required this.userMaxFloor,
    required this.userMaxSquare,
    required this.userMinFloor,
    required this.userMinPrice,
    required this.userMinSquare,
    required this.userPrice,
    this.userRoomCount,
  });

  factory PreferenceEntity.fromJson(Map<String, dynamic> json) =>
      _$PreferenceEntityFromJson(json);

  Map<String, dynamic> toJson() => _$PreferenceEntityToJson(this);

  PreferenceEntity copyWith({
    String? category,
    int? id,
    bool? mailing,
    String? userCity,
    String? userDistrict,
    int? userId,
    int? userMaxFloor,
    double? userMaxSquare,
    int? userMinFloor,
    int? userMinPrice,
    double? userMinSquare,
    int? userPrice,
    int? userRoomCount,
  }) {
    return PreferenceEntity(
      category: category ?? this.category,
      id: id ?? this.id,
      mailing: mailing ?? this.mailing,
      userCity: userCity ?? this.userCity,
      userDistrict: userDistrict ?? this.userDistrict,
      userId: userId ?? this.userId,
      userMaxFloor: userMaxFloor ?? this.userMaxFloor,
      userMaxSquare: userMaxSquare ?? this.userMaxSquare,
      userMinFloor: userMinFloor ?? this.userMinFloor,
      userMinPrice: userMinPrice ?? this.userMinPrice,
      userMinSquare: userMinSquare ?? this.userMinSquare,
      userPrice: userPrice ?? this.userPrice,
      userRoomCount: userRoomCount ?? this.userRoomCount,
    );
  }

  @override
  List<Object?> get props => [
        category,
        id,
        mailing,
        userCity,
        userDistrict,
        userId,
        userMaxFloor,
        userMaxSquare,
        userMinFloor,
        userMinPrice,
        userMinSquare,
        userPrice,
        userRoomCount,
      ];
}
