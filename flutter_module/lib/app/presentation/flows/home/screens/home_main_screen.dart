import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/flows/home/controllers/home_main_controller.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeMainScreen extends HookWidget {
  const HomeMainScreen() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);

    return ProviderScope(
      overrides: [
        testLauncherModuleControllerProvider.overrideWithValue(
          HomeMainController(
            appRouter: appRouter,
          ),
        ),
      ],
      child: const TestLauncherModule(),
    );
  }
}
