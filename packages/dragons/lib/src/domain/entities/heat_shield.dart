// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class HeatShield extends Equatable {
  HeatShield({
    @required this.material,
    @required this.sizeMeters,
    @required this.tempDegrees,
    @required this.devPartner,
  });

  final String material;
  final double sizeMeters;
  final int tempDegrees;
  final String devPartner;

  @override
  List<Object> get props => [
        material,
        sizeMeters,
        tempDegrees,
        devPartner,
      ];
}
