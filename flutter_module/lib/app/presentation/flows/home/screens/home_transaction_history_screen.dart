import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/routing/app_router.dart';
import '../../../modules/transaction_history/transaction_history_module.dart';
import '../../../modules/transaction_history/transaction_history_module_providers.dart';
import '../controllers/home_transaction_history_controller.dart';

class HomeTransactionHistoryScreen extends HookWidget {
  const HomeTransactionHistoryScreen() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);

    return ProviderScope(
      overrides: [
        transactionHistoryModuleControllerProvider.overrideWithValue(
          HomeTransactionHistoryController(
            appRouter: appRouter,
          ),
        ),
      ],
      child: const TransactionHistoryModule(),
    );
  }
}
