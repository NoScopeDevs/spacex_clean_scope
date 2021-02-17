// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CargoModel _$CargoModelFromJson(Map<String, dynamic> json) {
  return CargoModel(
    solarArray: json['solarArray'] as int,
    unpressurizedCargo: json['unpressurizedCargo'] as bool,
  );
}

Map<String, dynamic> _$CargoModelToJson(CargoModel instance) =>
    <String, dynamic>{
      'solarArray': instance.solarArray,
      'unpressurizedCargo': instance.unpressurizedCargo,
    };
