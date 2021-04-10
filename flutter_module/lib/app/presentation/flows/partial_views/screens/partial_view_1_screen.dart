import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/routing/app_router.dart';
import '../../../modules/test_launcher/test_launcher_module.dart';
import '../../../modules/test_launcher/test_launcher_module_providers.dart';
import '../controllers/partial_view_1_controller.dart';

class PartialView1Screen extends HookWidget {
  const PartialView1Screen() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);

    return ProviderScope(
      overrides: [
        testLauncherModuleControllerProvider.overrideWithValue(
          PartialView1Controller(
            appRouter: appRouter,
          ),
        ),
      ],
      child: const TestLauncherModule(),
    );
  }
}
