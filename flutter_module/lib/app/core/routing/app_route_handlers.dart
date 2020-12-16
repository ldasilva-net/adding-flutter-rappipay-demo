import 'package:flutter_module/app/core/common_widgets/app_loader.dart';
import 'package:flutter_module/app/data/models/transactions/transaction.dart';
import 'package:flutter_module/app/presentation/flows/history/screens/history_detail_screen.dart';
import 'package:flutter_module/app/presentation/flows/history/screens/history_screen.dart';
import 'package:flutter_module/app/presentation/flows/home/screens/home_main_screen.dart';
import 'package:flutter_module/app/presentation/flows/home/screens/home_transaction_detail_screen.dart';
import 'package:flutter_module/app/presentation/flows/home/screens/home_transaction_history_screen.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/presentation/flows/partial_views/screens/partial_view_1_screen.dart';
import 'package:flutter_module/app/presentation/flows/partial_views/screens/partial_view_2_screen.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const AppLoader();
});

// Home
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

// History
Handler historyHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const HistoryScreen();
});

Handler historyDetailHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  final currentTransaction = context.settings.arguments as Transaction;
  return HistoryDetailScreen(currentTransaction);
});

// Partial views
Handler partialView1Handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const PartialView1Screen();
});

Handler partialView2Handler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return const PartialView2Screen();
});
