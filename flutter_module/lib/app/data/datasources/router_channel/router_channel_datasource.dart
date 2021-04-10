import '../../models/router/router_result.dart';

abstract class RouterChannelDatasource {
  Future<void> reportChannelIsReady();
  Future<void> returnToPlatform(RouterResult routerResult);
}
