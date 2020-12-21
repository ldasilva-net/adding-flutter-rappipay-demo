import 'package:flutter_module/app/core/logger/app_logger.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource_impl.dart';

final routerChannelDatasourceProvider = Provider<RouterChannelDatasource>(
  (ref) => RouterChannelServiceImpl(
    appRouter: ref.watch(appRouterProvider),
    appLogger: ref.watch(appLoggerProvider),
  ),
);
