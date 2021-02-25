part of 'dragons_provider.dart';

/// Defines all the Dragons logic the app will use
class DragonsNotifier extends StateNotifier<DragonsState> {
  /// Base constructor expects its usecases
  /// and also defines inital state
  DragonsNotifier({
    @required GetDragon getDragon,
    @required GetDragons getDragons,
  })  : assert(getDragon != null),
        assert(getDragons != null),
        _getDragon = getDragon,
        _getDragons = getDragons,
        super(
          const DragonsState.initial(),
        );

  final GetDragon _getDragon;
  final GetDragons _getDragons;

  Future<void> getDragons() async {
    state = const Loading();

    final result = await _getDragons();

    result.fold(
      (l) => state = const Error('Error!'),
      (r) => state = Data(dragons: r),
    );
  }
}
