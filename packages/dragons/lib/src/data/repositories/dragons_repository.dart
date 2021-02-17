import 'package:errors/errors.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:network_manager/network_manager.dart';

import '../../domain/domain.dart' show Dragon, IDragonsRepository;
import '../datasources/remote/iremote_data_source.dart';

/// Dragons repository implementation
class DragonsRepository implements IDragonsRepository {
  /// Dragons repository constructor
  DragonsRepository({
    @required INetworkManager networkManager,
    @required IRemoteDataSource remoteDataSource,
  })  : assert(networkManager != null),
        assert(remoteDataSource != null),
        _networkManager = networkManager,
        _remoteDataSource = remoteDataSource;

  final INetworkManager _networkManager;
  final IRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<Dragon>>> getAllDragons() async {
    if (await _networkManager.isConnected) {
      final dragons = await _remoteDataSource.getAllDragons();
      return Right(dragons);
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, Dragon>> getDragon(String dragonId) async {
    if (await _networkManager.isConnected) {
      final dragon = await _remoteDataSource.getDragon(dragonId);
      return Right(dragon);
    } else {
      return Left(ServerFailure());
    }
  }
}
