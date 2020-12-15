import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
abstract class TransactionResponse with _$TransactionResponse {
  factory TransactionResponse({
    @JsonKey(name: 'total_pages') int totalPages,
    @JsonKey(name: 'content') List<Transaction> transactions,
  }) = _TransactionsResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}
