import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_response.freezed.dart';
part 'transaction_response.g.dart';

@freezed
class TransactionResponse with _$TransactionResponse {
  factory TransactionResponse({
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'content') required List<Transaction> transactions,
  }) = _TransactionsResponse;

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);
}
