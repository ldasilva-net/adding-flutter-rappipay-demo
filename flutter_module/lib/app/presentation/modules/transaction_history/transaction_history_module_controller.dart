import 'package:flutter/foundation.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/modules/_base/base_module_controller.dart';

abstract class TransactionHistoryModuleController extends BaseModuleController {
  TransactionHistoryModuleController({
    @required AppRouter appRouter,
  }) : super(appRouter: appRouter);

  @override
  void onInit() {
    // no-op
  }

  void onTransactionSelected(Transaction transaction);

  @override
  void onDispose() {
    // no-op
  }
}
