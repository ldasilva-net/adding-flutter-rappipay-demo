import 'package:flutter_module/app/presentation/flows/partial_views/controllers/partial_view_1_controller.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PartialView1Screen extends StatelessWidget {
  const PartialView1Screen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        testLauncherModuleControllerProvider
            .overrideWithValue(PartialView1Controller(context.read)),
      ],
      child: const TestLauncherModule(),
    );
  }
}
