import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/flows/home/controllers/home_transaction_detail_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeTransactionDetailScreen extends StatelessWidget {
  final Transaction currentTransaction;
  const HomeTransactionDetailScreen(this.currentTransaction, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        transactionDetailModuleControllerProvider
            .overrideWithValue(HomeTransactionDetailController(context.read)),
        currentTransactionProvider.overrideWithValue(currentTransaction),
      ],
      child: const TransactionDetailModule(),
    );
  }
}
