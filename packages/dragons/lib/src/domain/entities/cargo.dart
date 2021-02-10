// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Cargo extends Equatable {
  Cargo({
    @required this.solarArray,
    @required this.unpressurizedCargo,
  });

  final int solarArray;
  final bool unpressurizedCargo;

  @override
  List<Object> get props => [
        solarArray,
        unpressurizedCargo,
      ];
}
