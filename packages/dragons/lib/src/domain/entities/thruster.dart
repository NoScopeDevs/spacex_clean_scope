// ignore_for_file: public_member_api_docs
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

import 'thrust.dart';

class Thruster extends Equatable {
  Thruster({
    @required this.type,
    @required this.amount,
    @required this.pods,
    @required this.fuel1,
    @required this.fuel2,
    @required this.isp,
    @required this.thrust,
  });

  final String type;
  final int amount;
  final int pods;
  final String fuel1;
  final String fuel2;
  final int isp;
  final Thrust thrust;

  @override
  List<Object> get props => [
        type,
        amount,
        pods,
        fuel1,
        fuel2,
        isp,
        thrust,
      ];
}
