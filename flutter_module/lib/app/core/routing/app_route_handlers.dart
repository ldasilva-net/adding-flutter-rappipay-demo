import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/flows/home/screens/home_main_screen.dart';
import 'package:flutter_module/app/presentation/flows/home/screens/home_transaction_detail_screen.dart';
import 'package:flutter_module/app/presentation/flows/home/screens/home_transaction_history_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const HomeMainScreen();
});

Handler homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const HomeMainScreen();
});

Handler homeTransactionHistoryHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const HomeTransactionHistoryScreen();
});

Handler homeTransactionDetailHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  final currentTransaction = context.settings.arguments as Transaction;
  return HomeTransactionDetailScreen(currentTransaction);
});
