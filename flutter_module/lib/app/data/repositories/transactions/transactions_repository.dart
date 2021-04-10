import '../../models/transactions/transaction_response.dart';

abstract class TransactionsRepository {
  Future<TransactionResponse> fetchTransactions(int page);
}
