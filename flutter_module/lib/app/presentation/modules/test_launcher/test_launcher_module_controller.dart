import '../_base/base_module_controller.dart';

abstract class TestLauncherModuleController extends BaseModuleController {
  @override
  void onInit() {
    // no-op
  }

  String get launchTitle;

  void launchSomething();

  @override
  void onDispose() {
    // no-op
  }
}
