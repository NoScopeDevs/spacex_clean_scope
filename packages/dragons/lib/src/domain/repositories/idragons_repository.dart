import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import '../entities/dragon.dart';

/// Repository interface for dragons
abstract class IDragonsRepository {
  ///Get all dragons
  Future<Either<Failure, List<Dragon>>> getAllDragons();

  ///Get single dragon using [dragonId]
  Future<Either<Failure, Dragon>> getDragon(String dragonId);
}
