import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/data/models/router/router_result.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository_provider.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryController extends TransactionHistoryModuleController {
  PlatformRepository _platformRepository;

  HistoryController(Reader read) : super(read) {
    _platformRepository = read(platformRepositoryProvider);
  }

  @override
  void onTransactionSelected(Transaction transaction) {
    read(appRouterProvider)
        .navigateTo(AppRoutes.homeTransactionDetail, argument: transaction);
  }

  @override
  void onBackPressed() {
    _platformRepository.returnToPlatform(RouterResult(result: "Its all ok!"));
  }
}
