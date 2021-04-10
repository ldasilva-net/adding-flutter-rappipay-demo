import '../../../../core/routing/app_router.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../modules/warmup/warmup_animations_module_controller.dart';

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
