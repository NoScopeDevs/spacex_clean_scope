// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';

import 'cargo_model.dart';
import 'launch_payload_model.dart';

part 'trunk_model.g.dart';

@JsonSerializable()
class TrunkModel implements Trunk {
  TrunkModel({
    @required this.cargo,
    @required this.trunkVolume,
  });

  factory TrunkModel.fromJson(Map<String, dynamic> json) =>
      _$TrunkModelFromJson(json);

  Map<String, dynamic> toJson() => _$TrunkModelToJson(this);

  @override
  final CargoModel cargo;

  @override
  final LaunchPayloadVolModel trunkVolume;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        cargo,
        trunkVolume,
      ];
}
