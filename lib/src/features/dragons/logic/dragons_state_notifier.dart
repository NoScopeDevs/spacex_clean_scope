part of 'dragons_provider.dart';

/// Defines all the Dragons logic the app will use
class DragonsNotifier extends StateNotifier<DragonsState> {
  /// Base constructor expects its usecases
  /// and also defines inital state
  DragonsNotifier({
    @required GetDragons getDragons,
  })  : assert(getDragons != null),
        _getDragons = getDragons,
        super(const DragonsState.initial());

  final GetDragons _getDragons;

  Future<void> getDragons() async {
    state = const DragonsState.loading();

    final result = await _getDragons();

    result.fold(
      (error) => state = DragonsState.error(error.toString()),
      (dragons) => state = DragonsState.data(dragons: dragons),
    );
  }
}
