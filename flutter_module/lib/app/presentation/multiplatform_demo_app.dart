import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MultiplatformDemoApp extends HookWidget {
  const MultiplatformDemoApp() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = _startupAppConfig();

    return MaterialApp(
      theme: AppTheme.appThemeData,
      onGenerateRoute: appRouter.generateRoutes,
      navigatorKey: appRouter.navigatorKey,
      initialRoute: AppRoutes.root,
    );
  }

  AppRouter _startupAppConfig() {
    useProvider(platformRepositoryProvider);
    return useProvider(appRouterProvider);
  }
}
