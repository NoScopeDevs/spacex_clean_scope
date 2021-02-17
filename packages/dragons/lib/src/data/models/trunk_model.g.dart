// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trunk_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrunkModel _$TrunkModelFromJson(Map<String, dynamic> json) {
  return TrunkModel(
    cargo: json['cargo'] == null
        ? null
        : CargoModel.fromJson(json['cargo'] as Map<String, dynamic>),
    trunkVolume: json['trunkVolume'] == null
        ? null
        : LaunchPayloadVolModel.fromJson(
            json['trunkVolume'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrunkModelToJson(TrunkModel instance) =>
    <String, dynamic>{
      'cargo': instance.cargo,
      'trunkVolume': instance.trunkVolume,
    };
