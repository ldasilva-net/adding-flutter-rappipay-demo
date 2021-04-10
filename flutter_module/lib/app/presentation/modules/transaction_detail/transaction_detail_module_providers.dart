import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/models/transactions/transaction.dart';
import '../../../data/models/transactions/transaction_detail.dart';
import 'transaction_detail_module_controller.dart';

final transactionDetailModuleWarmupReadyProvider =
    StateProvider<bool>((ref) => false);

final transactionDetailModuleControllerProvider =
    ScopedProvider<TransactionDetailModuleController>(null);

final dummyTransaction = Transaction.fromJson(
  json.decode('''
    {
      "title": "Transferencia bancaria",
      "amount": "- \$1,200.00",
      "description": " *1707",
      "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/bank-transfer.png",
      "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/bank-transfer-icon.png",
      "tag": {
        "name": "Rechazado",
        "text_color": "#ff441f",
        "background_color": "#FFFFFF",
        "icon": null
      },
      "action": "detail",
      "action_detail": null,
      "date": "2020-09-22 14:52",
      "transaction_id": "2223758f-70c2-49fa-9e61-cf2a93704957",
      "origin": "bank_transfer"
    }''') as Map<String, dynamic>,
);

final currentTransactionProvider =
    ScopedProvider<Transaction>((ref) => dummyTransaction);

final currentTransactionDetailListProvider =
    Provider.autoDispose<List<TransactionDetail>>(
  (ref) {
    final body = json.decode('''
  [
    {
      "key": "Transacción #",
      "value": "211334"
    },
    {
      "key": "Banco destino",
      "value": "Colpatria"
    },
    {
      "key": "Cuenta destino",
      "value": "•••• 5536"
    },
    {
      "key": "Costo transacción",
      "value": "\$0"
    }
  ]''') as List;

    final detailList = body
        .map((i) => TransactionDetail.fromJson(i as Map<String, dynamic>))
        .toList();
    return detailList;
  },
);
