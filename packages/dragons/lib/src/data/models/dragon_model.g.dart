// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dragon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DragonModel _$DragonModelFromJson(Map<String, dynamic> json) {
  return DragonModel(
    active: json['active'] as bool,
    crewCapacity: json['crewCapacity'] as int,
    description: json['description'] as String,
    diameter: json['diameter'] == null
        ? null
        : DiameterModel.fromJson(json['diameter'] as Map<String, dynamic>),
    dryMassKg: json['dryMassKg'] as int,
    dryMassLb: json['dryMassLb'] as int,
    firstFlight: json['firstFlight'] == null
        ? null
        : DateTime.parse(json['firstFlight'] as String),
    flickrImages:
        (json['flickrImages'] as List)?.map((e) => e as String)?.toList(),
    heatShield: json['heatShield'] == null
        ? null
        : HeatShieldModel.fromJson(json['heatShield'] as Map<String, dynamic>),
    heightWTrunk: json['heightWTrunk'] == null
        ? null
        : DiameterModel.fromJson(json['heightWTrunk'] as Map<String, dynamic>),
    id: json['id'] as String,
    launchPayloadMass: json['launchPayloadMass'] == null
        ? null
        : PayloadMassModel.fromJson(
            json['launchPayloadMass'] as Map<String, dynamic>),
    launchPayloadVol: json['launchPayloadVol'] == null
        ? null
        : LaunchPayloadVolModel.fromJson(
            json['launchPayloadVol'] as Map<String, dynamic>),
    name: json['name'] as String,
    orbitDurationYr: json['orbitDurationYr'] as int,
    pressurizedCapsule: json['pressurizedCapsule'] == null
        ? null
        : PressurizedCapsuleModel.fromJson(
            json['pressurizedCapsule'] as Map<String, dynamic>),
    returnPayloadMass: json['returnPayloadMass'] == null
        ? null
        : PayloadMassModel.fromJson(
            json['returnPayloadMass'] as Map<String, dynamic>),
    returnPayloadVol: json['returnPayloadVol'] == null
        ? null
        : LaunchPayloadVolModel.fromJson(
            json['returnPayloadVol'] as Map<String, dynamic>),
    sidewallAngleDeg: json['sidewallAngleDeg'] as int,
    thrusters: (json['thrusters'] as List)
        ?.map((e) => e == null
            ? null
            : ThrusterModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    trunk: json['trunk'] == null
        ? null
        : TrunkModel.fromJson(json['trunk'] as Map<String, dynamic>),
    type: json['type'] as String,
    wikipedia: json['wikipedia'] as String,
  );
}

Map<String, dynamic> _$DragonModelToJson(DragonModel instance) =>
    <String, dynamic>{
      'active': instance.active,
      'crewCapacity': instance.crewCapacity,
      'description': instance.description,
      'diameter': instance.diameter,
      'dryMassKg': instance.dryMassKg,
      'dryMassLb': instance.dryMassLb,
      'firstFlight': instance.firstFlight?.toIso8601String(),
      'flickrImages': instance.flickrImages,
      'heatShield': instance.heatShield,
      'heightWTrunk': instance.heightWTrunk,
      'id': instance.id,
      'launchPayloadMass': instance.launchPayloadMass,
      'launchPayloadVol': instance.launchPayloadVol,
      'name': instance.name,
      'orbitDurationYr': instance.orbitDurationYr,
      'pressurizedCapsule': instance.pressurizedCapsule,
      'returnPayloadMass': instance.returnPayloadMass,
      'returnPayloadVol': instance.returnPayloadVol,
      'sidewallAngleDeg': instance.sidewallAngleDeg,
      'thrusters': instance.thrusters,
      'trunk': instance.trunk,
      'type': instance.type,
      'wikipedia': instance.wikipedia,
    };
