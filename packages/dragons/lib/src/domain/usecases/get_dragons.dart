import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:meta/meta.dart';

import '../entities/dragon.dart';
import '../repositories/idragons_repository.dart';

///GetDragons usecase
class GetDragons {
  /// Defines the use case when getting a `List` of `Dragon`
  GetDragons({@required this.repository}) : assert(repository != null);

  /// Repo
  final IDragonsRepository repository;

  /// Callable class
  /// Get a list of dragons
  Future<Either<Failure, List<Dragon>>> call() async {
    return await repository.getAllDragons();
  }
}
