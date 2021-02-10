// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

class LaunchPayloadVol extends Equatable {
  LaunchPayloadVol({
    @required this.cubicMeters,
    @required this.cubicFeet,
  });

  final int cubicMeters;
  final int cubicFeet;

  @override
  List<Object> get props => [
        cubicMeters,
        cubicFeet,
      ];
}
