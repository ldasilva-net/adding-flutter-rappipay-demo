import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/common_widgets/app_nav_bar.dart';
import '../../../core/theme/app_text_theme.dart';
import '../../../core/utils/r.dart';
import '../../../data/models/transactions/transaction.dart';
import '../_base/base_module_scaffold.dart';
import 'local_widgets/transaction_detail_list.dart';
import 'local_widgets/transaction_detail_options.dart';
import 'local_widgets/transaction_detail_tag.dart';
import 'transaction_detail_module_controller.dart';
import 'transaction_detail_module_providers.dart';

class TransactionDetailModule extends HookWidget {
  const TransactionDetailModule() : super();

  @override
  Widget build(BuildContext context) {
    final transactionDetailModuleController =
        useProvider(transactionDetailModuleControllerProvider);
    final currentTransaction = useProvider(currentTransactionProvider);

    useEffect(() {
      transactionDetailModuleController.onInit();
      return transactionDetailModuleController.onDispose;
    }, []);

    return TransactionDetailWidget(
        transactionDetailActions: transactionDetailModuleController,
        currentTransaction: currentTransaction);
  }
}

class TransactionDetailWidget extends StatelessWidget {
  final TransactionDetailActions transactionDetailActions;
  final Transaction currentTransaction;

  const TransactionDetailWidget({
    Key? key,
    required this.transactionDetailActions,
    required this.currentTransaction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseModuleScaffold(
      body: SafeArea(
        child: Container(
          margin:
              const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                AppNavBar(
                  onTapBack: () => transactionDetailActions.onBackPressed(),
                ),
                Container(
                  width: 80,
                  height: 80,
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: FadeInImage.assetNetwork(
                    placeholder: AppAsset
                        .icons_image_icons_transaction_default_transaction_default_icon,
                    image: currentTransaction.image,
                    imageErrorBuilder: (context, url, error) => Image.asset(AppAsset
                        .icons_image_icons_transaction_default_transaction_default_icon),
                  ),
                ),
                Text(
                  currentTransaction.title,
                  style: AppTextTheme.h1BrownSemibold.copyWith(height: 1.2),
                  textAlign: TextAlign.center,
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Text(
                    currentTransaction.date,
                    style: AppTextTheme.caption1GreyRegular,
                    textAlign: TextAlign.center,
                  ),
                ),
                TransactionDetailTag(tag: currentTransaction.tag),
                TransactionDetailOptions(
                  actions: transactionDetailActions,
                ),
                TransactionDetailList(
                  transaction: currentTransaction,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
