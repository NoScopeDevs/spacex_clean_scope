import 'package:dragons/dragons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dragons_state.freezed.dart';

@freezed
abstract class DragonsState with _$DragonsState {
  /// Data is present state
  const factory DragonsState.data({@required List<Dragon> dragons}) = Data;

  /// Initial/default state
  const factory DragonsState.initial() = Initial;

  /// Data is loading state
  const factory DragonsState.loading() = Loading;

  /// Error when loading data state
  const factory DragonsState.error([String message]) = Error;
}
