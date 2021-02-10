import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:meta/meta.dart';

import '../entities/dragon.dart';
import '../repositories/idragons_repository.dart';

///GetDragon usecase
class GetDragon {
  /// Defines the use case when getting a dragon details
  GetDragon({@required this.repository}) : assert(repository != null);

  /// Repo
  final IDragonsRepository repository;

  /// Callable class
  /// Get a single dragon using [dragonId]
  Future<Either<Failure, Dragon>> call(String dragonId) async {
    return await repository.getDragon(dragonId);
  }
}
