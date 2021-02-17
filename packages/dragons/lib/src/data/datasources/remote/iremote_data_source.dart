import '../../../domain/entities/dragon.dart';

/// Defines the methods every remote
/// data source implementation must have
abstract class IRemoteDataSource {
  /// Get all dragons
  Future<List<Dragon>> getAllDragons();

  /// Get single dragon using [dragonId]
  Future<Dragon> getDragon(String dragonId);
}
