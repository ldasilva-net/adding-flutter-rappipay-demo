import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource_provider.dart';
import 'package:flutter_module/app/data/models/router/router_result.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository.dart';

class PlatformRepositoryImpl extends PlatformRepository {
  final Reader _read;

  RouterChannelDatasource _routerChannelDatasource;

  PlatformRepositoryImpl(this._read) {
    _routerChannelDatasource = _read(routerChannelDatasourceProvider);
  }

  @override
  Future<void> returnToPlatform(RouterResult routerResult) async {
    _routerChannelDatasource.returnToPlatform(routerResult);
  }
}
