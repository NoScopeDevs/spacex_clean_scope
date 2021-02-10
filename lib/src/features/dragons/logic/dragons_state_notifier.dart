part of 'dragons_provider.dart';
// TODO: Implement Dragons StateNotifier

/// Defines all the Dragons logic the app will use
class DragonsNotifier extends StateNotifier<DragonsState> {
  /// Base constructor expects a [ProviderReference] to
  /// read its usecases and also defines inital state
  DragonsNotifier(ProviderReference ref) : super(const DragonsState.initial());
}
