// ignore_for_file: public_member_api_docs

import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

class PayloadMass extends Equatable {
  PayloadMass({
    @required this.kg,
    @required this.lb,
  });

  final int kg;
  final int lb;

  @override
  List<Object> get props => [
        kg,
        lb,
      ];
}
