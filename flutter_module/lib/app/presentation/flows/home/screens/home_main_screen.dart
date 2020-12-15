import 'package:flutter_module/app/presentation/flows/home/controllers/home_main_controller.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        testLauncherModuleControllerProvider
            .overrideWithValue(HomeMainController(context.read)),
      ],
      child: const TestLauncherModule(),
    );
  }
}
