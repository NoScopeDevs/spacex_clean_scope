// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';

part 'heat_shield_model.g.dart';

@JsonSerializable()
class HeatShieldModel implements HeatShield {
  HeatShieldModel({
    @required this.devPartner,
    @required this.material,
    @required this.sizeMeters,
    @required this.tempDegrees,
  });

  factory HeatShieldModel.fromJson(Map<String, dynamic> json) =>
      _$HeatShieldModelFromJson(json);

  Map<String, dynamic> toJson() => _$HeatShieldModelToJson(this);

  @override
  final String devPartner;

  @override
  final String material;

  @override
  final double sizeMeters;

  @override
  final int tempDegrees;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        devPartner,
        material,
        sizeMeters,
        tempDegrees,
      ];
}
