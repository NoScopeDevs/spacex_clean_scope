part of 'dragons_provider.dart';
// TODO: Implement Dragons StateNotifier

/// Defines all the Dragons logic the app will use
class DragonsNotifier extends StateNotifier<DragonsState> {
  /// Base constructor expects its usecases
  /// and also defines inital state
  DragonsNotifier() : super(const DragonsState.initial());
}
