import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/app/core/routing/app_router.dart';
import 'package:flutter_module/app/presentation/flows/history/controllers/history_warmup_controller.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_providers.dart';
import 'package:flutter_module/app/presentation/modules/transaction_detail/transaction_detail_module_warmup.dart';
import 'package:flutter_module/app/presentation/modules/warmup/warmup_animations_module_providers.dart';
import 'package:flutter_module/app/presentation/modules/warmup/warmup_module.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
