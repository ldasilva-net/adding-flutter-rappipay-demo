import 'package:flutter_module/app/presentation/modules/_base/base_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class TestLauncherModuleController extends BaseModuleController {
  TestLauncherModuleController(Reader read) : super(read);

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
