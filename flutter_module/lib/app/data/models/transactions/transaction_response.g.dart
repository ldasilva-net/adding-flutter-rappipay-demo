// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionsResponse _$_$_TransactionsResponseFromJson(
    Map<String, dynamic> json) {
  return _$_TransactionsResponse(
    totalPages: json['total_pages'] as int,
    transactions: (json['content'] as List<dynamic>)
        .map((e) => Transaction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_TransactionsResponseToJson(
        _$_TransactionsResponse instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'content': instance.transactions,
    };
