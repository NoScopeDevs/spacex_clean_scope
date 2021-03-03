// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'entities.dart';

class Dragon extends Equatable {
  Dragon({
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.active,
    @required this.crewCapacity,
    @required this.sidewallAngleDeg,
    @required this.orbitDurationYr,
    @required this.dryMassKg,
    @required this.dryMassLb,
    @required this.firstFlight,
    @required this.heatShield,
    @required this.thrusters,
    @required this.launchPayloadMass,
    @required this.launchPayloadVol,
    @required this.returnPayloadMass,
    @required this.returnPayloadVol,
    @required this.pressurizedCapsule,
    @required this.trunk,
    @required this.heightWTrunk,
    @required this.diameter,
    @required this.flickrImages,
    @required this.wikipedia,
    @required this.description,
  });

  final String id;
  final String name;
  final String type;
  final bool active;
  final int crewCapacity;
  final int sidewallAngleDeg;
  final int orbitDurationYr;
  final int dryMassKg;
  final int dryMassLb;
  final DateTime firstFlight;
  final HeatShield heatShield;
  final List<Thruster> thrusters;
  final PayloadMass launchPayloadMass;
  final LaunchPayloadVol launchPayloadVol;
  final PayloadMass returnPayloadMass;
  final LaunchPayloadVol returnPayloadVol;
  final PressurizedCapsule pressurizedCapsule;
  final Trunk trunk;
  final Diameter heightWTrunk;
  final Diameter diameter;
  final List<String> flickrImages;
  final String wikipedia;
  final String description;

  @override
  List<Object> get props => [
        id,
        name,
        type,
        active,
        crewCapacity,
        sidewallAngleDeg,
        orbitDurationYr,
        dryMassKg,
        dryMassLb,
        firstFlight,
        heatShield,
        thrusters,
        launchPayloadMass,
        launchPayloadVol,
        returnPayloadMass,
        returnPayloadVol,
        pressurizedCapsule,
        trunk,
        heightWTrunk,
        diameter,
        flickrImages,
        wikipedia,
        description,
      ];
}
