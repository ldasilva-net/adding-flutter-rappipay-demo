import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'transaction_detail_module.dart';
import 'transaction_detail_module_controller.dart';
import 'transaction_detail_module_providers.dart';

class TransactionDetailModuleWarmup extends HookWidget {
  const TransactionDetailModuleWarmup() : super();

  @override
  Widget build(BuildContext context) {
    late Animation<Offset> animation;
    int repeat = 3;

    final warmupReady = useProvider(transactionDetailModuleWarmupReadyProvider);

    final animationController =
        useAnimationController(duration: const Duration(milliseconds: 250));

    useEffect(() {
      animation = Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: const Offset(0.0, 0.0),
      ).animate(animationController);

      animationController.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          repeat--;
          if (repeat > 0) {
            animationController.forward();
          } else {
            warmupReady.state = true;
          }
        }
      });

      WidgetsBinding.instance?.addPostFrameCallback((_) async {
        animationController.forward();
      });

      return null;
    }, const []);

    return SlideTransition(
      position: animation,
      child: TransactionDetailWidget(
        currentTransaction: dummyTransaction,
        transactionDetailActions: _DummyTransactionDetailActions(),
      ),
    );
  }
}

class _DummyTransactionDetailActions extends TransactionDetailActions {
  @override
  void onCallSupport() {}

  @override
  void onSplitBill() {}

  @override
  void onDownloadBill() {}

  @override
  void onMoreOptions() {}

  @override
  void onBackPressed() {}
}
