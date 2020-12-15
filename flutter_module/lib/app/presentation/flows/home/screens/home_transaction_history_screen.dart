import 'package:flutter_module/app/presentation/flows/home/controllers/home_transaction_history_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTransactionHistoryScreen extends StatelessWidget {
  const HomeTransactionHistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        transactionHistoryModuleControllerProvider
            .overrideWithValue(HomeTransactionHistoryController(context.read)),
      ],
      child: const TransactionHistoryModule(),
    );
  }
}
