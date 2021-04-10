import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/logger/app_logger.dart';
import '../../../core/routing/app_router.dart';
import 'router_channel_datasource.dart';
import 'router_channel_datasource_impl.dart';

final routerChannelDatasourceProvider = Provider<RouterChannelDatasource>(
  (ref) => RouterChannelDatasourceImpl(
    appRouter: ref.watch(appRouterProvider),
    appLogger: ref.watch(appLoggerProvider),
  ),
);
