import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import 'package:dragons/dragons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network_manager/network_manager.dart';

import 'dragons_state.dart';

part 'dragons_state_notifier.dart';

/// Provider to use the DragonsStateNotifier
final dragonsNotifierProvider = StateNotifierProvider<DragonsNotifier>(
  (ref) => DragonsNotifier(
    getDragon: ref.watch(_getDragonProvider),
    getDragons: ref.watch(_getDragonsProvider),
  ),
);

/// Repositories Providers
final _dragonsRepositoryProvider = Provider<IDragonsRepository>(
  (ref) => DragonsRepository(
    remoteDataSource: DioRemoteDataSource(
      url: 'https://api.spacexdata.com/v4/dragons',
      client: Dio(),
    ),
    networkManager: NetworkManager(DataConnectionChecker()),
  ),
);

/// Use Cases Providers
final _getDragonProvider = Provider<GetDragon>(
  (ref) => GetDragon(
    repository: ref.watch(
      _dragonsRepositoryProvider,
    ),
  ),
);

final _getDragonsProvider = Provider<GetDragons>(
  (ref) => GetDragons(
    repository: ref.watch(
      _dragonsRepositoryProvider,
    ),
  ),
);
