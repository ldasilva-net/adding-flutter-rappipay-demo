import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/logger/app_logger.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository_provider.dart';
import 'package:hooks_riverpod/all.dart';

class MultiplatformDemoApp extends HookWidget {
  const MultiplatformDemoApp({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _configureApp();

    final appRouter = useProvider(appRouterProvider);

    return MaterialApp(
      theme: AppTheme.appThemeData,
      onGenerateRoute: appRouter.generateRoutes,
      navigatorKey: appRouter.navigatorKey,
    );
  }

  void _configureApp() {
    useProvider(appLoggerProvider);
    useProvider(appRouterProvider);
    useProvider(platformRepositoryProvider);
  }
}
