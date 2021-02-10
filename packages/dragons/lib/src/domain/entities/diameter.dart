// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

class Diameter extends Equatable {
  Diameter({
    @required this.meters,
    @required this.feet,
  });

  final double meters;
  final double feet;

  @override
  List<Object> get props => [
        meters,
        feet,
      ];
}
