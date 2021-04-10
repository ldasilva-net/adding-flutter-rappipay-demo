// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$_$_TransactionFromJson(Map<String, dynamic> json) {
  return _$_Transaction(
    title: json['title'] as String,
    description: json['description'] as String?,
    amount: json['amount'] as String,
    image: json['image'] as String,
    icon: json['icon'] as String,
    tag: TransactionTag.fromJson(json['tag'] as Map<String, dynamic>),
    action: json['action'] as String,
    actionDetail: json['action_detail'] as String?,
    date: json['date'] as String,
    transactionId: json['transaction_id'] as String,
  );
}

Map<String, dynamic> _$_$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'amount': instance.amount,
      'image': instance.image,
      'icon': instance.icon,
      'tag': instance.tag,
      'action': instance.action,
      'action_detail': instance.actionDetail,
      'date': instance.date,
      'transaction_id': instance.transactionId,
    };
