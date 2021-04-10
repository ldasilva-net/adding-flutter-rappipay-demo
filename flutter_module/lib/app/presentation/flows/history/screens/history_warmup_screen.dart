import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/routing/app_router.dart';
import '../../../modules/transaction_detail/transaction_detail_module_providers.dart';
import '../../../modules/transaction_detail/transaction_detail_module_warmup.dart';
import '../../../modules/warmup/warmup_animations_module_providers.dart';
import '../../../modules/warmup/warmup_module.dart';
import '../controllers/history_warmup_controller.dart';

class HistoryWarmupScreen extends HookWidget {
  const HistoryWarmupScreen() : super();

  @override
  Widget build(BuildContext context) {
    final appRouter = useProvider(appRouterProvider);

    return ProviderScope(
      overrides: [
        warmupModuleControllerProvider.overrideWithValue(
          HistoryWarmupController(appRouter: appRouter),
        ),
        warmupReadyProvider.overrideAs((ref) {
          final transactionDetailWarmupReady =
              ref(transactionDetailModuleWarmupReadyProvider).state;

          return transactionDetailWarmupReady;
        }),
      ],
      child: const WarmupModule(
        warmupModulesList: [
          TransactionDetailModuleWarmup(),
        ],
      ),
    );
  }
}
