import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/flows/history/controllers/history_detail_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryDetailScreen extends StatelessWidget {
  final Transaction currentTransaction;
  const HistoryDetailScreen(this.currentTransaction, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        transactionDetailModuleControllerProvider
            .overrideWithValue(HistoryDetailController(context.read)),
        currentTransactionProvider.overrideWithValue(currentTransaction),
      ],
      child: const TransactionDetailModule(),
    );
  }
}
