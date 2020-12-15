import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseModuleController {
  final Reader read;

  BaseModuleController(this.read);

  void onInit();

  void onDispose();

  void onBackPressed() {
    read(appRouterProvider).navigateBack();
  }
}
