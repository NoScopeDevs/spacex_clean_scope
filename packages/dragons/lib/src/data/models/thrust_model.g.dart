// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thrust_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThrustModel _$ThrustModelFromJson(Map<String, dynamic> json) {
  return ThrustModel(
    kN: (json['kN'] as num)?.toDouble(),
    lbf: json['lbf'] as int,
  );
}

Map<String, dynamic> _$ThrustModelToJson(ThrustModel instance) =>
    <String, dynamic>{
      'kN': instance.kN,
      'lbf': instance.lbf,
    };
