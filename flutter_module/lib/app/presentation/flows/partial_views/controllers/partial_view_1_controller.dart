import '../../../../core/routing/app_router.dart';
import '../../../modules/test_launcher/test_launcher_module_controller.dart';

class PartialView1Controller extends TestLauncherModuleController {
  @override
  final AppRouter appRouter;

  PartialView1Controller({required this.appRouter}) : super();

  @override
  void launchSomething() {
    appRouter.showInfoMessage(
      "Tiny dialog",
      "From Partial View 1",
    );
  }

  @override
  String get launchTitle => "Partial View 1";
}
