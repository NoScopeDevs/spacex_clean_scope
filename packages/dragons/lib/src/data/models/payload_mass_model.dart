// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/payload_mass.dart';

part 'payload_mass_model.g.dart';

@JsonSerializable()
class PayloadMassModel implements PayloadMass {
  PayloadMassModel({
    @required this.kg,
    @required this.lb,
  });

  factory PayloadMassModel.fromJson(Map<String, dynamic> json) =>
      _$PayloadMassModelFromJson(json);

  Map<String, dynamic> toJson() => _$PayloadMassModelToJson(this);

  @override
  final int kg;

  @override
  final int lb;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [
        kg,
        lb,
      ];
}
