// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pressurized_capsule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PressurizedCapsuleModel _$PressurizedCapsuleModelFromJson(
    Map<String, dynamic> json) {
  return PressurizedCapsuleModel(
    payloadVolume: json['payloadVolume'] == null
        ? null
        : LaunchPayloadVolModel.fromJson(
            json['payloadVolume'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PressurizedCapsuleModelToJson(
        PressurizedCapsuleModel instance) =>
    <String, dynamic>{
      'payloadVolume': instance.payloadVolume,
    };
