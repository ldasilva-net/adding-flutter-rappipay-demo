import 'package:flutter_module/app/data/models/transactions/transaction_tag.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
abstract class Transaction with _$Transaction {
  factory Transaction({
    String title,
    String description,
    String amount,
    String image,
    String icon,
    TransactionTag tag,
    String action,
    @JsonKey(name: 'action_detail') String actionDetail,
    String date,
    @JsonKey(name: 'transaction_id') String transactionId,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
