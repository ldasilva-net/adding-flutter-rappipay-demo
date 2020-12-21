import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/flows/history/controllers/history_detail_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryDetailScreen extends HookWidget {
  final Transaction currentTransaction;
  const HistoryDetailScreen(this.currentTransaction, {Key key})
      : super(key: key);

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
