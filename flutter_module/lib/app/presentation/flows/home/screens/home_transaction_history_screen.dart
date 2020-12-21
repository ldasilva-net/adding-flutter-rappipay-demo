import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/flows/home/controllers/home_transaction_history_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTransactionHistoryScreen extends HookWidget {
  const HomeTransactionHistoryScreen({Key key}) : super(key: key);

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
