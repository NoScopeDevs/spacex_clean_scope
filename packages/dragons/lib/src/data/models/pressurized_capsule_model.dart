// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/entities.dart';

import 'launch_payload_model.dart';

part 'pressurized_capsule_model.g.dart';

@JsonSerializable()
class PressurizedCapsuleModel implements PressurizedCapsule {
  PressurizedCapsuleModel({@required this.payloadVolume});

  factory PressurizedCapsuleModel.fromJson(Map<String, dynamic> json) =>
      _$PressurizedCapsuleModelFromJson(json);

  Map<String, dynamic> toJson() => _$PressurizedCapsuleModelToJson(this);

  @override
  final LaunchPayloadVolModel payloadVolume;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [payloadVolume];
}
