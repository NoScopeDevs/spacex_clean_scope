// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';
import 'thrust_model.dart';

part 'thruster_model.g.dart';

@JsonSerializable()
class ThrusterModel implements Thruster {
  ThrusterModel({
    @required this.amount,
    @required this.fuel1,
    @required this.fuel2,
    @required this.isp,
    @required this.pods,
    @required this.thrust,
    @required this.type,
  });

  factory ThrusterModel.fromJson(Map<String, dynamic> json) =>
      _$ThrusterModelFromJson(json);

  Map<String, dynamic> toJson() => _$ThrusterModelToJson(this);

  @override
  final int amount;

  @override
  final String fuel1;

  @override
  final String fuel2;

  @override
  final int isp;

  @override
  final int pods;

  @override
  final ThrustModel thrust;

  @override
  final String type;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        amount,
        fuel1,
        fuel2,
        isp,
        pods,
        thrust,
        type,
      ];
}
