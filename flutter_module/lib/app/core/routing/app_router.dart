import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../common_widgets/default_dialog.dart';
import 'app_route_handlers.dart';
import 'app_routes.dart';

final appRouterProvider = Provider<AppRouter>((ref) => AppRouter());

class AppRouter {
  final navigatorKey = GlobalKey<NavigatorState>();

  final FluroRouter _router = FluroRouter();

  AppRouter() {
    _configureRoutes();
  }

  BuildContext getNavigatorContext() => navigatorKey.currentContext!;

  void _configureRoutes() {
    _router.notFoundHandler = Handler(
      handlerFunc: (context, params) {
        //TODO: Handle not found routes
        return Container();
      },
    );

    _router.define(
      AppRoutes.root,
      handler: rootHandler,
      transitionType: TransitionType.none,
    );

    // #region Home
    _router.define(
      AppRoutes.home,
      handler: homeHandler,
      transitionType: TransitionType.none,
    );

    _router.define(
      AppRoutes.homeTransactionHistory,
      handler: homeTransactionHistoryHandler,
      transitionType: TransitionType.none,
    );

    _router.define(
      AppRoutes.homeTransactionDetail,
      handler: homeTransactionDetailHandler,
      transitionType: TransitionType.inFromBottom,
    );
    // #endregion

    // #region History
    _router.define(
      AppRoutes.historyWarmup,
      handler: historyWarmupHandler,
      transitionType: TransitionType.none,
    );
    _router.define(
      AppRoutes.history,
      handler: historyHandler,
      transitionType: TransitionType.none,
    );
    _router.define(
      AppRoutes.historyDetail,
      handler: historyDetailHandler,
      transitionType: TransitionType.inFromBottom,
    );
    // #endregion

    // #region Partial Views
    _router.define(
      AppRoutes.partialView1Test,
      handler: partialView1Handler,
      transitionType: TransitionType.none,
    );

    _router.define(
      AppRoutes.partialView2Test,
      handler: partialView2Handler,
      transitionType: TransitionType.none,
    );
    // #endregion
  }

  Route<dynamic> generateRoutes(RouteSettings routeSettings) =>
      _router.generator(routeSettings)!;

  void navigateTo(String page,
      {Object? argument,
      bool replace = false,
      bool clearStack = false,
      TransitionType? transition}) {
    _router.navigateTo(
      getNavigatorContext(),
      page,
      routeSettings: RouteSettings(
        arguments: argument,
      ),
      replace: replace,
      clearStack: clearStack,
      transition: transition,
    );
  }

  void navigateBack() {
    _router.pop(getNavigatorContext());
  }

  void showInfoMessage(String title, String message) {
    showDialog(
      context: getNavigatorContext(),
      builder: (_) => DefaultDialog(
        title: title,
        message: message,
        gotIt: navigateBack,
      ),
    );
  }
}
