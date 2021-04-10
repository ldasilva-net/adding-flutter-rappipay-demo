import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/flows/partial_views/controllers/partial_view_2_controller.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PartialView2Screen extends HookWidget {
  const PartialView2Screen() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);

    return ProviderScope(
      overrides: [
        testLauncherModuleControllerProvider.overrideWithValue(
          PartialView2Controller(
            appRouter: appRouter,
          ),
        ),
      ],
      child: const TestLauncherModule(),
    );
  }
}
