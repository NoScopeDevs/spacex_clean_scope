// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heat_shield_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeatShieldModel _$HeatShieldModelFromJson(Map<String, dynamic> json) {
  return HeatShieldModel(
    devPartner: json['devPartner'] as String,
    material: json['material'] as String,
    sizeMeters: (json['sizeMeters'] as num)?.toDouble(),
    tempDegrees: json['tempDegrees'] as int,
  );
}

Map<String, dynamic> _$HeatShieldModelToJson(HeatShieldModel instance) =>
    <String, dynamic>{
      'devPartner': instance.devPartner,
      'material': instance.material,
      'sizeMeters': instance.sizeMeters,
      'tempDegrees': instance.tempDegrees,
    };
