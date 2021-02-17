import 'package:dio/dio.dart';
import 'package:errors/errors.dart';
import 'package:meta/meta.dart';

import '../../models/dragon_model.dart';

import 'iremote_data_source.dart';

class DioRemoteDataSource implements IRemoteDataSource {
  DioRemoteDataSource({
    @required String url,
    @required Dio client,
  })  : assert(url != null),
        assert(client != null),
        _url = url,
        _client = client;

  final String _url;
  final Dio _client;

  @override
  Future<List<DragonModel>> getAllDragons() async {
    try {
      final response = await _client.get(_url);

      switch (response.statusCode) {
        case 200:
          final dragons = <DragonModel>[];

          for (final item in response.data) {
            dragons.add(DragonModel.fromJson(item));
          }

          return dragons;

          break;
        default:
          throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }

  @override
  Future<DragonModel> getDragon(String dragonId) async {
    try {
      final response = await _client.get('$_url/$dragonId');

      switch (response.statusCode) {
        case 200:
          return DragonModel.fromJson(response.data);
          break;
        default:
          throw ServerException();
      }
    } catch (_) {
      throw ServerException();
    }
  }
}
