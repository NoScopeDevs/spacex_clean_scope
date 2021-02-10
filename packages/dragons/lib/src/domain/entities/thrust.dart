// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Thrust extends Equatable {
  Thrust({
    @required this.kN,
    @required this.lbf,
  });

  final double kN;
  final int lbf;

  @override
  // TODO: implement props
  List<Object> get props => [
        kN,
        lbf,
      ];
}
