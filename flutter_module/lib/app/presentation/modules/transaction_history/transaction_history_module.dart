import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/common_widgets/app_nav_bar.dart';
import '../../../core/theme/app_text_theme.dart';
import '../_base/base_module_scaffold.dart';
import 'local_widgets/transaction_history_header.dart';
import 'local_widgets/transaction_history_list.dart';
import 'transaction_history_module_providers.dart';

class TransactionHistoryModule extends HookWidget {
  const TransactionHistoryModule() : super();

  @override
  Widget build(BuildContext context) {
    final transactionHistoryModuleController =
        useProvider(transactionHistoryModuleControllerProvider);

    useEffect(() {
      transactionHistoryModuleController.onInit();
      return transactionHistoryModuleController.onDispose;
    }, []);

    return BaseModuleScaffold(
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 20),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: AppNavBar(
                  onTapBack: () =>
                      transactionHistoryModuleController.onBackPressed(),
                ),
              ),
              const SliverToBoxAdapter(
                child: Text(
                  'Transacciones',
                  style: AppTextTheme.h1BrownSemibold,
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 20,
                      ),
                      TransactionHistoryHeader()
                    ]),
              ),
              const TransactionHistoryList()
            ],
          ),
        ),
      ),
    );
  }
}
