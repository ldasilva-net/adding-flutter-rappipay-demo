import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/core/routing/app_routes.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTransactionHistoryController
    extends TransactionHistoryModuleController {
  HomeTransactionHistoryController(Reader read) : super(read);

  @override
  void onTransactionSelected(Transaction transaction) {
    read(appRouterProvider)
        .navigateTo(AppRoutes.homeTransactionDetail, argument: transaction);
  }
}
