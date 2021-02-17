// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/launch_payload_vol.dart';

part 'launch_payload_model.g.dart';

@JsonSerializable()
class LaunchPayloadVolModel implements LaunchPayloadVol {
  LaunchPayloadVolModel({
    @required this.cubicFeet,
    @required this.cubicMeters,
  });

  factory LaunchPayloadVolModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchPayloadVolModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchPayloadVolModelToJson(this);

  @override
  final int cubicFeet;

  @override
  final int cubicMeters;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        cubicFeet,
        cubicMeters,
      ];
}
