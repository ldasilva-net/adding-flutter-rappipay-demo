import 'package:flutter_module/app/presentation/flows/history/controllers/history_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        transactionHistoryModuleControllerProvider
            .overrideWithValue(HistoryController(context.read)),
      ],
      child: const TransactionHistoryModule(),
    );
  }
}
