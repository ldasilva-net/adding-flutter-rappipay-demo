import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/data/repositories/platform/platform_repository_provider.dart';
import 'package:flutter_module/app/presentation/flows/history/controllers/history_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryScreen extends HookWidget {
  const HistoryScreen() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);
    final platformRepository = useProvider(platformRepositoryProvider);

    return ProviderScope(
      overrides: [
        transactionHistoryModuleControllerProvider.overrideWithValue(
          HistoryController(
            appRouter: appRouter,
            platformRepository: platformRepository,
          ),
        ),
      ],
      child: const TransactionHistoryModule(),
    );
  }
}
