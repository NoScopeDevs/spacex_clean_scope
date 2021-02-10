import 'package:errors/errors.dart';
import 'package:dragons/src/domain/entities/dragon.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../domain/domain.dart';

import '../datasources/local_data_source.dart';
import '../datasources/remote_data_source.dart';

/// Dragons repository implementation
class DragonsRepository implements IDragonsRepository {
  /// Dragons repository constructor
  DragonsRepository({
    @required this.localDataSource,
    @required this.remoteDataSource,
  })  : assert(localDataSource != null),
        assert(remoteDataSource != null);

  final LocalDataSource localDataSource;
  final RemoteDataSource remoteDataSource;

  @override
  Future<Either<Failure, List<Dragon>>> getAllDragons() {
    // TODO: implement getAllDragons
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Dragon>> getDragon(String dragonId) {
    // TODO: implement getDragon
    throw UnimplementedError();
  }

  // TODO: Implement [IDragonsRepository] methods
}
