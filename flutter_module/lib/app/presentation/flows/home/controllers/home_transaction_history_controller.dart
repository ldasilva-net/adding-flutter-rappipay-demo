import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_controller.dart';

class HomeTransactionHistoryController
    extends TransactionHistoryModuleController {
  HomeTransactionHistoryController({
    @required AppRouter appRouter,
  }) : super(appRouter: appRouter);

  @override
  void onTransactionSelected(Transaction transaction) {
    appRouter.navigateTo(
      AppRoutes.homeTransactionDetail,
      argument: transaction,
    );
  }
}
