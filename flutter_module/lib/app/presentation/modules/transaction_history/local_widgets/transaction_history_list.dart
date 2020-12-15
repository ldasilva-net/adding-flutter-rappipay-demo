import 'package:flutter_module/app/presentation/modules/transaction_history/local_widgets/transaction_tile.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_constants.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionHistoryList extends HookWidget {
  const TransactionHistoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final maxItemsCount = useProvider(totalPagesProvider).state *
        TransactionHistoryModuleConstants.transactionsPageLimit;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ProviderScope(
            overrides: [
              transactionItemIndexProvider.overrideWithValue(index),
            ],
            child: const TransactionTile(),
          );
        },
        childCount: maxItemsCount,
      ),
    );
  }
}
