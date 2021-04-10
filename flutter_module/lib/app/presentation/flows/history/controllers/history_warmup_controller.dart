import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/presentation/modules/warmup/warmup_animations_module_controller.dart';

class HistoryWarmupController extends WarmupModuleController {
  @override
  final AppRouter appRouter;

  HistoryWarmupController({required this.appRouter}) : super();

  @override
  void onComplete() {
    appRouter.navigateTo(
      AppRoutes.history,
      clearStack: true,
    );
  }
}
