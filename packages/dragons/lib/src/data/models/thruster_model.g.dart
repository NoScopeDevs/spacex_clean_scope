// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thruster_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ThrusterModel _$ThrusterModelFromJson(Map<String, dynamic> json) {
  return ThrusterModel(
    amount: json['amount'] as int,
    fuel1: json['fuel1'] as String,
    fuel2: json['fuel2'] as String,
    isp: json['isp'] as int,
    pods: json['pods'] as int,
    thrust: json['thrust'] == null
        ? null
        : ThrustModel.fromJson(json['thrust'] as Map<String, dynamic>),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$ThrusterModelToJson(ThrusterModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'fuel1': instance.fuel1,
      'fuel2': instance.fuel2,
      'isp': instance.isp,
      'pods': instance.pods,
      'thrust': instance.thrust,
      'type': instance.type,
    };
