import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_controller.dart';

class PartialView2Controller extends TestLauncherModuleController {
  PartialView2Controller({
    @required AppRouter appRouter,
  }) : super(appRouter: appRouter);

  @override
  void launchSomething() {
    appRouter.showInfoMessage(
      "Tiny dialog",
      "From Partial View 2",
    );
  }

  @override
  String get launchTitle => "Partial View 2";
}
