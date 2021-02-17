// ignore_for_file: public_member_api_docs

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/diameter.dart';

part 'diameter_model.g.dart';

@JsonSerializable()
class DiameterModel implements Diameter {
  DiameterModel({
    @required this.feet,
    @required this.meters,
  });

  factory DiameterModel.fromJson(Map<String, dynamic> json) =>
      _$DiameterModelFromJson(json);

  Map<String, dynamic> toJson() => _$DiameterModelToJson(this);

  @override
  final double feet;

  @override
  final double meters;

  @override
  List<Object> get props => [feet, meters];

  @override
  bool get stringify => true;
}
