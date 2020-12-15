import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/presentation/modules/test_launcher/test_launcher_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeMainController extends TestLauncherModuleController {
  HomeMainController(Reader read) : super(read);

  @override
  void launchSomething() {
    read(appRouterProvider).navigateTo(AppRoutes.homeTransactionHistory);
  }

  @override
  String get launchTitle => "Transactions";
}
