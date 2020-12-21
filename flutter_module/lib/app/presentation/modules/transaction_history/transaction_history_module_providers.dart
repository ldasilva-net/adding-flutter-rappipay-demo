import 'package:flutter_module/app/data/models/transactions/transaction_item.dart';
import 'package:flutter_module/app/data/models/transactions/transaction_response.dart';
import 'package:flutter_module/app/data/repositories/transactions/transactions_repository_provider.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_constants.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final transactionHistoryModuleControllerProvider =
    ScopedProvider<TransactionHistoryModuleController>(null);

final totalPagesProvider = StateProvider<int>((ref) => 1);

final transactionsPagesProvider =
    FutureProvider.autoDispose.family<TransactionResponse, int>(
  (ref, page) async {
    final transactionsRepository = ref.watch(transactionsRepositoryProvider);
    final transactionsResponse =
        await transactionsRepository.fetchTransactions(page);

    ref.read(totalPagesProvider).state = transactionsResponse.totalPages;

    ref.maintainState = true;

    return transactionsResponse;
  },
);

final transactionItemAtIndexProvider =
    Provider.autoDispose.family<AsyncValue<TransactionItem>, int>((ref, index) {
  final page = (index / TransactionHistoryModuleConstants.transactionsPageLimit)
          .floor() +
      1;

  return ref.watch(transactionsPagesProvider(page)).whenData((value) {
    final offset =
        index % TransactionHistoryModuleConstants.transactionsPageLimit;

    if (offset >= value.transactions.length) {
      return const TransactionItem.empty();
    } else {
      return TransactionItem.transactionFound(value.transactions[offset]);
    }
  });
});

final transactionItemIndexProvider = ScopedProvider<int>(null);
