// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'launch_payload_vol.dart';

class PressurizedCapsule extends Equatable {
  PressurizedCapsule({
    @required this.payloadVolume,
  });

  final LaunchPayloadVol payloadVolume;

  @override
  List<Object> get props => [payloadVolume];
}
