// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';

import 'diameter_model.dart';
import 'heat_shield_model.dart';
import 'launch_payload_model.dart';
import 'payload_mass_model.dart';
import 'pressurized_capsule_model.dart';
import 'thruster_model.dart';
import 'trunk_model.dart';

part 'dragon_model.g.dart';

@JsonSerializable()
class DragonModel implements Dragon {
  DragonModel({
    @required this.active,
    @required this.crewCapacity,
    @required this.description,
    @required this.diameter,
    @required this.dryMassKg,
    @required this.dryMassLb,
    @required this.firstFlight,
    @required this.flickrImages,
    @required this.heatShield,
    @required this.heightWTrunk,
    @required this.id,
    @required this.launchPayloadMass,
    @required this.launchPayloadVol,
    @required this.name,
    @required this.orbitDurationYr,
    @required this.pressurizedCapsule,
    @required this.returnPayloadMass,
    @required this.returnPayloadVol,
    @required this.sidewallAngleDeg,
    @required this.thrusters,
    @required this.trunk,
    @required this.type,
    @required this.wikipedia,
  });

  factory DragonModel.fromJson(Map<String, dynamic> json) =>
      _$DragonModelFromJson(json);

  Map<String, dynamic> toJson() => _$DragonModelToJson(this);

  @override
  final bool active;

  @override
  final int crewCapacity;

  @override
  final String description;

  @override
  final DiameterModel diameter;

  @override
  final int dryMassKg;

  @override
  final int dryMassLb;

  @override
  final DateTime firstFlight;

  @override
  final List<String> flickrImages;

  @override
  final HeatShieldModel heatShield;

  @override
  final DiameterModel heightWTrunk;

  @override
  final String id;

  @override
  final PayloadMassModel launchPayloadMass;

  @override
  final LaunchPayloadVolModel launchPayloadVol;

  @override
  final String name;

  @override
  final int orbitDurationYr;

  @override
  final PressurizedCapsuleModel pressurizedCapsule;

  @override
  final PayloadMassModel returnPayloadMass;

  @override
  final LaunchPayloadVolModel returnPayloadVol;

  @override
  final int sidewallAngleDeg;

  @override
  final List<ThrusterModel> thrusters;

  @override
  final TrunkModel trunk;

  @override
  final String type;

  @override
  final String wikipedia;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [];
}
