import '../../../../core/routing/app_router.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../modules/test_launcher/test_launcher_module_controller.dart';

class HomeMainController extends TestLauncherModuleController {
  @override
  final AppRouter appRouter;

  HomeMainController({required this.appRouter}) : super();

  @override
  void launchSomething() {
    appRouter.navigateTo(AppRoutes.homeTransactionHistory);
  }

  @override
  String get launchTitle => "Transactions";
}
