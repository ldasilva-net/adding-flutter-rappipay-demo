import 'package:flutter_module/app/data/models/transactions/transaction_tag.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';
part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  factory Transaction({
    required String title,
    String? description,
    required String amount,
    required String image,
    required String icon,
    required TransactionTag tag,
    required String action,
    @JsonKey(name: 'action_detail') String? actionDetail,
    required String date,
    @JsonKey(name: 'transaction_id') required String transactionId,
  }) = _Transaction;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);
}
