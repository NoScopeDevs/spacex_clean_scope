// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';

part 'thrust_model.g.dart';

@JsonSerializable()
class ThrustModel implements Thrust {
  ThrustModel({
    @required this.kN,
    @required this.lbf,
  });

  factory ThrustModel.fromJson(Map<String, dynamic> json) =>
      _$ThrustModelFromJson(json);

  Map<String, dynamic> toJson() => _$ThrustModelToJson(this);

  @override
  final double kN;

  @override
  final int lbf;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        kN,
        lbf,
      ];
}
