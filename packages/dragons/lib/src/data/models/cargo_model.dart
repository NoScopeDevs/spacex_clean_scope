// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/cargo.dart';

part 'cargo_model.g.dart';

@JsonSerializable()
class CargoModel implements Cargo {
  CargoModel({
    @required this.solarArray,
    @required this.unpressurizedCargo,
  });

  factory CargoModel.fromJson(Map<String, dynamic> json) =>
      _$CargoModelFromJson(json);

  Map<String, dynamic> toJson() => _$CargoModelToJson(this);

  @override
  final int solarArray;

  @override
  final bool unpressurizedCargo;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        solarArray,
        unpressurizedCargo,
      ];
}
