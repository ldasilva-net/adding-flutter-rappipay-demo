import '../../../../core/routing/app_router.dart';
import '../../../../core/routing/app_routes.dart';
import '../../../../data/models/transactions/transaction.dart';
import '../../../modules/transaction_history/transaction_history_module_controller.dart';

class HomeTransactionHistoryController
    extends TransactionHistoryModuleController {
  @override
  final AppRouter appRouter;

  HomeTransactionHistoryController({required this.appRouter}) : super();

  @override
  void onTransactionSelected(Transaction transaction) {
    appRouter.navigateTo(
      AppRoutes.homeTransactionDetail,
      argument: transaction,
    );
  }
}
