// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diameter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiameterModel _$DiameterModelFromJson(Map<String, dynamic> json) {
  return DiameterModel(
    feet: (json['feet'] as num)?.toDouble(),
    meters: (json['meters'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$DiameterModelToJson(DiameterModel instance) =>
    <String, dynamic>{
      'feet': instance.feet,
      'meters': instance.meters,
    };
