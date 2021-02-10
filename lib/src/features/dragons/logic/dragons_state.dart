import 'package:freezed_annotation/freezed_annotation.dart';

part 'dragons_state.freezed.dart';

@freezed
abstract class DragonsState with _$DragonsState {
  /// Data is present state
  const factory DragonsState() = Data;

  /// Initial/default state
  const factory DragonsState.initial() = Initial;

  /// Data is loading state
  const factory DragonsState.loading() = Loading;

  /// Error when loading data state
  const factory DragonsState.error([String message]) = Error;

  ///TODO: Data from dragon detail
  ///TODO: Error form dragon error
}
