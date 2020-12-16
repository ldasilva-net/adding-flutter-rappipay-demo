import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PartialView1Controller extends TestLauncherModuleController {
  PartialView1Controller(Reader read) : super(read);

  @override
  void launchSomething() {
    read(appRouterProvider)
        .showInfoMessage("Tiny dialog", "From Partial View 1");
  }

  @override
  String get launchTitle => "Partial View 1";
}
