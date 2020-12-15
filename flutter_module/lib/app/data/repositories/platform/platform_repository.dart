import 'package:flutter_module/app/data/models/router/router_result.dart';

abstract class PlatformRepository {
  Future<void> returnToPlatform(RouterResult routerResult);
}
