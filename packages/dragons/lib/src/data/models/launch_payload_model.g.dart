// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchPayloadVolModel _$LaunchPayloadVolModelFromJson(
    Map<String, dynamic> json) {
  return LaunchPayloadVolModel(
    cubicFeet: json['cubicFeet'] as int,
    cubicMeters: json['cubicMeters'] as int,
  );
}

Map<String, dynamic> _$LaunchPayloadVolModelToJson(
        LaunchPayloadVolModel instance) =>
    <String, dynamic>{
      'cubicFeet': instance.cubicFeet,
      'cubicMeters': instance.cubicMeters,
    };
