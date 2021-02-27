import 'package:flutter_module/app/core/common_widgets/app_nav_bar.dart';
import 'package:flutter_module/app/core/theme/app_color.dart';
import 'package:flutter_module/app/core/theme/app_text_theme.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/local_widgets/transaction_history_header.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/local_widgets/transaction_history_list.dart';
import 'package:flutter_module/app/presentation/modules/transaction_history/transaction_history_module_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransactionHistoryModule extends HookWidget {
  const TransactionHistoryModule({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final transactionHistoryModuleController =
        useProvider(transactionHistoryModuleControllerProvider);

    useEffect(() {
      transactionHistoryModuleController.onInit();
      return transactionHistoryModuleController.onDispose;
    }, []);

    return Scaffold(
      backgroundColor: AppColor.whiteTwo,
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 20),
          child: CustomScrollView(
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
