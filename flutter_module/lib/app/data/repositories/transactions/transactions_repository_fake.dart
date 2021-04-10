import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/transactions/transaction_response.dart';
import 'transactions_repository.dart';

class TransactionsRepositoryFake implements TransactionsRepository {
  final Reader read;
  TransactionsRepositoryFake(this.read);

  @override
  Future<TransactionResponse> fetchTransactions(int page) async {
    final jsonString = (page == 6)
        ? '''
        {
          "page": 1,
          "content": [
            {
              "action": "detail",
              "amount": "+ \$300",
              "date": "2020-09-07 11:26",
              "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "tag": {
                "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/lm.svg",
                "name": "+ 15",
                "background_color": "#6A142E"
              },
              "title": "$page Recarga | *1234",
              "transaction_id": "98b0c90b-4327-4ea4-a77e-e37b7fa5ce60"
            },
            {
              "action": "detail",
              "amount": "+ \$400",
              "date": "2020-08-13 13:06",
              "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "tag": {
                "background_color": "#FFFFFF",
                "name": "Rechazado",
                "text_color": "#ff441f"
              },
              "title": "Recarga | *1234",
              "description": "Pagame por favor...",
              "transaction_id": "9600079c-9857-4884-8186-4f7f2b06f400"
            }
          ],
          "total_pages": 6
        }'''
        : '''
        {
          "page": 1,
          "content": [
            {
              "action": "detail",
              "amount": "+ \$300",
              "date": "2020-09-07 11:26",
              "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "tag": {
                "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/lm.svg",
                "name": "+ 25"
              },
              "title": "$page Recarga | *1234",
              "transaction_id": "98b0c90b-4327-4ea4-a77e-e37b7fa5ce60"
            },
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
            },
            {
              "title": "davivienda versiontwo",
              "amount": "- \$1,000",
              "description": "Hegmann Well",
              "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/transfer-out.png",
              "tag": {
                "name": null,
                "text_color": null,
                "background_color": null,
                "icon": null
              },
              "action": "detail",
              "action_detail": null,
              "date": "2020-09-21 16:35",
              "transaction_id": "c5bbb097-1110-4259-9e01-594e801faaf6",
              "origin": "p2p"
            },
            {
              "action": "detail",
              "amount": "+ \$400",
              "date": "2020-08-13 13:06",
              "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "tag": {
                "background_color": "#FFFFFF",
                "name": "Rechazado",
                "text_color": "#ff441f"
              },
              "title": "Recarga | *1234",
              "description": "Pagame por favor...",
              "transaction_id": "9600079c-9857-4884-8186-4f7f2b06f400"
            },
            {
              "action": "detail",
              "amount": "+ \$500",
              "date": "2020-08-13 12:25",
              "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "image": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/cc-icon.png",
              "tag": {
                "icon": "https://ldasilvaassets.b-cdn.net/adding-flutter-rappipay-demo/lm.svg",
                "name": "+ 15",
                "background_color": "#6A142E"
              },
              "title": "Recarga | *1234",
              "transaction_id": "9599bf10-acd8-4041-bd42-6d5886c2eefe"
            }            
          ],
          "total_pages": 6
        }''';

    final body = json.decode(jsonString) as Map<String, dynamic>;

    await Future.delayed(const Duration(seconds: 2));

    return TransactionResponse.fromJson(body);
  }
}
