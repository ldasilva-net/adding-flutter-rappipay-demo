import '../../datasources/router_channel/router_channel_datasource.dart';
import '../../models/router/router_result.dart';
import 'platform_repository.dart';

class PlatformRepositoryImpl extends PlatformRepository {
  final RouterChannelDatasource _routerChannelDatasource;

  PlatformRepositoryImpl({
    required RouterChannelDatasource routerChannelDatasource,
  }) : _routerChannelDatasource = routerChannelDatasource;

  @override
  Future<void> returnToPlatform(RouterResult routerResult) async {
    _routerChannelDatasource.returnToPlatform(routerResult);
  }
}
