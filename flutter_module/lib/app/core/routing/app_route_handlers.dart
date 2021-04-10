import 'package:fluro/fluro.dart';

import '../../data/models/transactions/transaction.dart';
import '../../presentation/flows/history/screens/history_detail_screen.dart';
import '../../presentation/flows/history/screens/history_screen.dart';
import '../../presentation/flows/history/screens/history_warmup_screen.dart';
import '../../presentation/flows/home/screens/home_main_screen.dart';
import '../../presentation/flows/home/screens/home_transaction_detail_screen.dart';
import '../../presentation/flows/home/screens/home_transaction_history_screen.dart';
import '../../presentation/flows/partial_views/screens/partial_view_1_screen.dart';
import '../../presentation/flows/partial_views/screens/partial_view_2_screen.dart';
import '../common_widgets/app_loader.dart';

Handler rootHandler = Handler(
  handlerFunc: (context, params) {
    return const AppLoader();
  },
);

// #region Home
Handler homeHandler = Handler(
  handlerFunc: (context, params) {
    return const HomeMainScreen();
  },
);

Handler homeTransactionHistoryHandler = Handler(
  handlerFunc: (context, params) {
    return const HomeTransactionHistoryScreen();
  },
);

Handler homeTransactionDetailHandler = Handler(
  handlerFunc: (context, params) {
    final currentTransaction = context!.arguments! as Transaction;
    return HomeTransactionDetailScreen(currentTransaction);
  },
);
// #endregion

// #region History
Handler historyWarmupHandler = Handler(
  handlerFunc: (context, params) {
    return const HistoryWarmupScreen();
  },
);

Handler historyHandler = Handler(
  handlerFunc: (context, params) {
    return const HistoryScreen();
  },
);

Handler historyDetailHandler = Handler(
  handlerFunc: (context, params) {
    final currentTransaction = context!.arguments! as Transaction;
    return HistoryDetailScreen(currentTransaction);
  },
);
// #endregion

// #region Partial views
Handler partialView1Handler = Handler(
  handlerFunc: (context, params) {
    return const PartialView1Screen();
  },
);

Handler partialView2Handler = Handler(
  handlerFunc: (context, params) {
    return const PartialView2Screen();
  },
);
// #endregion
