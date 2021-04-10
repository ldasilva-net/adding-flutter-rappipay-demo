import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../transaction_history_module_constants.dart';
import '../transaction_history_module_providers.dart';
import 'transaction_tile.dart';

class TransactionHistoryList extends HookWidget {
  const TransactionHistoryList() : super();

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
