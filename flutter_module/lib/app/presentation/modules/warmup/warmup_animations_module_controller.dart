import '../_base/base_module_controller.dart';

abstract class WarmupModuleController extends BaseModuleController {
  @override
  void onInit() {
    // no-op
  }

  void onComplete();

  @override
  void onDispose() {
    // no-op
  }
}
