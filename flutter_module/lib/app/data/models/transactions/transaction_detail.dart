import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_detail.freezed.dart';
part 'transaction_detail.g.dart';

@freezed
class TransactionDetail with _$TransactionDetail {
  factory TransactionDetail({
    required String key,
    required String value,
  }) = _TransactionDetail;

  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);
}
