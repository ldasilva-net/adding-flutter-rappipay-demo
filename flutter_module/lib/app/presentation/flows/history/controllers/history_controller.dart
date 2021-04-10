import '../../../../core/routing/app_router.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../data/models/router/router_result.dart';
import '../../../../data/models/transactions/transaction.dart';
import '../../../../data/repositories/platform/platform_repository.dart';
import '../../../modules/transaction_history/transaction_history_module_controller.dart';

class HistoryController extends TransactionHistoryModuleController {
  final PlatformRepository _platformRepository;

  @override
  final AppRouter appRouter;

  HistoryController({
    required PlatformRepository platformRepository,
    required this.appRouter,
  })   : _platformRepository = platformRepository,
        super();

  @override
  void onTransactionSelected(Transaction transaction) {
    appRouter.navigateTo(
      AppRoutes.homeTransactionDetail,
      argument: transaction,
    );
  }

  @override
  void onBackPressed() {
    _platformRepository.returnToPlatform(RouterResult(result: "Its all ok!"));
  }
}
