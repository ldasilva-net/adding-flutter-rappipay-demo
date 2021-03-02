import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/presentation/modules/warmup/warmup_animations_module_controller.dart';

class HistoryWarmupController extends WarmupModuleController {
  HistoryWarmupController({
    @required AppRouter appRouter,
  }) : super(appRouter: appRouter);

  @override
  void onComplete() {
    appRouter.navigateTo(
      AppRoutes.history,
      clearStack: true,
    );
  }
}
