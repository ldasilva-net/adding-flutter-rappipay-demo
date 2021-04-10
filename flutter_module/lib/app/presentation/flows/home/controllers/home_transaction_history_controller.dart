import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_controller.dart';

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
