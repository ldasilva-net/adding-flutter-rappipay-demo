import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';

abstract class BaseModuleController {
  final AppRouter appRouter;

  BaseModuleController({
    @required this.appRouter,
  });

  void onInit();

  void onDispose();

  void onBackPressed() {
    appRouter.navigateBack();
  }
}
