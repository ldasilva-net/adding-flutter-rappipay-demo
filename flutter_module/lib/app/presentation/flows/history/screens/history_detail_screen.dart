import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../data/models/transactions/transaction.dart';
import '../../../modules/transaction_detail/transaction_detail_module.dart';
import '../../../modules/transaction_detail/transaction_detail_module_providers.dart';
import '../controllers/history_detail_controller.dart';

class HistoryDetailScreen extends HookWidget {
  final Transaction currentTransaction;
  const HistoryDetailScreen(this.currentTransaction) : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);

    return ProviderScope(
      overrides: [
        transactionDetailModuleControllerProvider.overrideWithValue(
          HistoryDetailController(
            appRouter: appRouter,
          ),
        ),
        currentTransactionProvider.overrideWithValue(currentTransaction),
      ],
      child: const TransactionDetailModule(),
    );
  }
}
