import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource.dart';
import 'package:flutter_module/app/data/models/router/router_result.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository.dart';

class PlatformRepositoryImpl extends PlatformRepository {
  final RouterChannelDatasource _routerChannelDatasource;

  PlatformRepositoryImpl({
    @required RouterChannelDatasource routerChannelDatasource,
  }) : _routerChannelDatasource = routerChannelDatasource;

  @override
  Future<void> returnToPlatform(RouterResult routerResult) async {
    _routerChannelDatasource.returnToPlatform(routerResult);
  }
}
