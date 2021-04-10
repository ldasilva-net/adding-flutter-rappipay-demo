import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';

abstract class BaseModuleController implements BackPressedSupport {
  @protected
  abstract final AppRouter appRouter;

  void onInit();

  void onDispose();

  @override
  void onBackPressed() {
    appRouter.navigateBack();
  }
}

abstract class BackPressedSupport {
  void onBackPressed();
}
