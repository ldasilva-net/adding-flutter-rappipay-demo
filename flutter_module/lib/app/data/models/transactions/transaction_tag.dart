import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_tag.freezed.dart';
part 'transaction_tag.g.dart';

@freezed
class TransactionTag with _$TransactionTag {
  factory TransactionTag({
    @JsonKey(name: 'background_color') String? backgroundColor,
    String? name,
    @JsonKey(name: 'text_color') String? textColor,
    String? icon,
  }) = _TransactionTag;

  factory TransactionTag.fromJson(Map<String, dynamic> json) =>
      _$TransactionTagFromJson(json);
}
