import 'dart:convert';

import 'package:fluro/fluro.dart';
import 'package:flutter_module/app/core/logger/app_logger.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource.dart';
import 'package:flutter_module/app/data/datasources/router_channel/router_channel_datasource_constants.dart';
import 'package:flutter_module/app/data/models/router/router_args.dart';
import 'package:flutter_module/app/data/models/router/router_result.dart';

class RouterChannelServiceImpl extends RouterChannelDatasource {
  final Reader _read;

  AppRouter _appRouter;
  AppLogger _appLogger;

  static const _routerChannel =
      MethodChannel(RouterChannelConstants.routerChannelId);

  RouterChannelServiceImpl(this._read) {
    _appRouter = _read(appRouterProvider);
    _appLogger = _read(appLoggerProvider);
    _setupRouterChannel();
    reportChannelIsReady();
  }

  Future<void> _setupRouterChannel() async {
    _routerChannel.setMethodCallHandler((call) async {
      switch (call.method) {
        case RouterChannelConstants.navigateTo:
          final routerArgsJson =
              json.decode(call.arguments.toString()) as Map<String, dynamic>;

          final routerArgs = RouterArgs.fromJson(routerArgsJson);

          _appRouter?.navigateTo(
            routerArgs.path,
            argument: routerArgs.args,
            clearStack: routerArgs.clearStack,
            replace: routerArgs.replace,
            transition: TransitionType.none,
          );

          break;

        default:
      }
    });
  }

  @override
  Future<void> reportChannelIsReady() async {
    try {
      await _routerChannel.invokeMethod(
        RouterChannelConstants.reportChannelIsReady,
      );
    } catch (e) {
      _appLogger?.e(e); //TODO Error handler
    }
  }

  @override
  Future<void> returnToPlatform(RouterResult routerResult) async {
    try {
      await _routerChannel.invokeMethod(
        RouterChannelConstants.returnToPlatform,
        {
          RouterChannelConstants.routerResult:
              jsonEncode(routerResult.toJson()),
        },
      );
    } catch (e) {
      _appRouter?.showInfoMessage('Exception', e.toString());
      _appLogger?.e(e); //TODO Error handler
    }
  }
}
