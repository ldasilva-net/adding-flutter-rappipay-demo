import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'transaction.dart';

part 'transaction_item.freezed.dart';

@freezed
class TransactionItem with _$TransactionItem {
  const factory TransactionItem.empty() = _Empty;
  const factory TransactionItem.transactionFound(Transaction transaction) =
      _TransactionFound;
}
